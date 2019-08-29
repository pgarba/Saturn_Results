import argparse
import time
import sys

from capstone import *
from keystone import *
from triton import *

# Tracing format

# 0x{x:cip}|{mem;dis.len(cip)@cip}|{x:rax}|{x:rbx}|{x:rcx}|{x:rdx}|{x:rsi}|{x:rdi}|{x:rbp}|{x:rsp}|{x:r8}|{x:r9}|{x:r10}|{x:r11}|{x:r12}|{x:r13}|{x:r14}|{x:r15}

# Debug flags

DEBUG = True

# Logging utilities

def fatal(errstr):
	print "[-] %s" % errstr
	sys.exit(1)

def warn(warnstr):
	print "[!] %s" % warnstr
	raw_input()

def log(logstr):
	# Simple log to stdout
	print "[+] %s" % logstr

def asm(logstr):
	# Simple asm to stdout
	print "%s" % logstr

# Assembling utilities

def assemble(insn_str, address = 0):
	try:
		ks = Ks(KS_ARCH_X86, KS_MODE_64)
		md = Cs(CS_ARCH_X86, CS_MODE_64)
		md.detail = True
		encoding, count = ks.asm(insn_str, address)
		for insn in md.disasm(bytes(bytearray(encoding)), address):
			log('Assembled: %s' % insn_str)
			return bytes(bytearray(encoding))
	except Exception as ex:
		warn('Failed to assemble: %s (ex = %s)' % (insn_str, ex))
	return None

# Concrete context class

class Step(object):

	def __init__(self, rax, rbx, rcx, rdx, rsi, rdi, rbp, rsp, r8, r9, r10, r11, r12, r13, r14, r15, rip, opcode):
		self.rax = rax
		self.rbx = rbx
		self.rcx = rcx
		self.rdx = rdx
		self.rsi = rsi
		self.rdi = rdi
		self.rbp = rbp
		self.rsp = rsp
		self.r8 = r8
		self.r9 = r9
		self.r10 = r10
		self.r11 = r11
		self.r12 = r12
		self.r13 = r13
		self.r14 = r14
		self.r15 = r15
		self.rip = rip
		self.opcode = opcode

	def getRegisterValue(self, name):
		if name == 'rax': return self.rax
		if name == 'rbx': return self.rbx
		if name == 'rcx': return self.rcx
		if name == 'rdx': return self.rdx
		if name == 'rsi': return self.rsi
		if name == 'rdi': return self.rdi
		if name == 'rbp': return self.rbp
		if name == 'rsp': return self.rsp
		if name == 'r8': return self.r8
		if name == 'r9': return self.r9
		if name == 'r10': return self.r10
		if name == 'r11': return self.r11
		if name == 'r12': return self.r12
		if name == 'r13': return self.r13
		if name == 'r14': return self.r14
		if name == 'r15': return self.r15
		fatal('Unknown register: %s' % name)

	def getAddress(self):
		return self.rip

	def getOpcode(self):
		return self.opcode

# Symbolic execution class

class Symbolizer(object):

	def __init__(self, DEBUG=False):
		self.tr = TritonContext()
		self.tr.setArchitecture(ARCH.X86_64)
		self.tr.enableMode(MODE.ALIGNED_MEMORY, True)
		self.tr.enableTaintEngine(False)
		self.cip = 0
		# Flags
		self.DEBUG = DEBUG
		# Memory
		self.mapping = {}
		self.memory = []
		# Stack
		self.stackSize = 0x4000
		self.stack = 0x12FEE8

	def setup(self, step):
		# Concretize the registers
		self.tr.setConcreteRegisterValue(self.tr.registers.rax, step.getRegisterValue('rax'))
		self.tr.setConcreteRegisterValue(self.tr.registers.rbx, step.getRegisterValue('rbx'))
		self.tr.setConcreteRegisterValue(self.tr.registers.rcx, step.getRegisterValue('rcx'))
		self.tr.setConcreteRegisterValue(self.tr.registers.rdx, step.getRegisterValue('rdx'))
		self.tr.setConcreteRegisterValue(self.tr.registers.rsi, step.getRegisterValue('rsi'))
		self.tr.setConcreteRegisterValue(self.tr.registers.rdi, step.getRegisterValue('rdi'))
		self.tr.setConcreteRegisterValue(self.tr.registers.r8, step.getRegisterValue('r8'))
		self.tr.setConcreteRegisterValue(self.tr.registers.r9, step.getRegisterValue('r9'))
		self.tr.setConcreteRegisterValue(self.tr.registers.r10, step.getRegisterValue('r10'))
		self.tr.setConcreteRegisterValue(self.tr.registers.r11, step.getRegisterValue('r11'))
		self.tr.setConcreteRegisterValue(self.tr.registers.r12, step.getRegisterValue('r12'))
		self.tr.setConcreteRegisterValue(self.tr.registers.r13, step.getRegisterValue('r13'))
		self.tr.setConcreteRegisterValue(self.tr.registers.r14, step.getRegisterValue('r14'))
		self.tr.setConcreteRegisterValue(self.tr.registers.r15, step.getRegisterValue('r15'))
		self.tr.setConcreteRegisterValue(self.tr.registers.rsp, step.getRegisterValue('rsp'))
		self.tr.setConcreteRegisterValue(self.tr.registers.rbp, step.getRegisterValue('rbp'))
		# Symbolize the registers
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.rax)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.rbx)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.rcx)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.rdx)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.rsi)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.rdi)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.r8)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.r9)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.r10)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.r11)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.r12)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.r13)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.r14)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.r15)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.rsp)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.rbp)
		# Symbolize the needed eflags bits
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.cf)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.zf)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.sf)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.af)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.pf)
		self.tr.convertRegisterToSymbolicVariable(self.tr.registers.of)

	def run(self, step, code):
		self.code = code
		inst = Instruction()
		inst.setOpcode(step.getOpcode())
		inst.setAddress(step.getAddress())
		self.tr.disassembly(inst)
		# Print the instruction
		if self.DEBUG:
			log('0x%X) %s' % (step.getAddress(), inst.getDisassembly()))
		# Handle the memory access
		self.handleMemoryAccess(inst)
		# Symbolically process the instruction
		if not self.tr.buildSemantics(inst):
			fatal('Failed to execute: %s' % inst)
		# Get the next RIP
		self.cip = self.tr.getConcreteRegisterValue(self.tr.registers.rip)
		# Return the RIP of the next instruction
		return self.cip

	def addKnownMemoryMapping(self, mapping):
		for maddr, value in mapping.items():
			self.mapping[maddr] = value

	def handleMemoryAccess(self, inst):

		def addTritonMemory(inst, mem):
			size = mem.getSize()
			seg = mem.getSegmentRegister()
			base = mem.getBaseRegister()
			index = mem.getIndexRegister()
			scale = mem.getScale()
			disp = mem.getDisplacement()
			# Get concrete segment value
			segv = 0
			if seg.getName() == 'gs' or seg.getName() == 'fs':
				segv += self.tr.getConcreteRegisterValue(seg);
			# Get concrete base value
			basev = 0
			if base.getName() != 'unknown':
				if base.getName() == 'rip':
					basev += inst.getSize()
				basev += self.tr.getConcreteRegisterValue(base)
			# Get concrete index value
			indexv = 0
			if index.getName() != 'unknown':
				indexv += self.tr.getConcreteRegisterValue(index)
			# Get concrete scale/displacement values
			scalev = scale.getValue()
			dispv = disp.getValue()
			# Calculate the concrete memory address
			maddr = (segv + basev + indexv * scalev + dispv) & 0xFFFFFFFFFFFFFFFF
			# If the address is not symbolized, do it
			if maddr not in self.tr.getSymbolicMemory():
				macc = MemoryAccess(maddr, size)
				# If we don't know the concrete value, panic
				avoid = False
				if maddr not in self.mapping:
					if maddr >= (self.stack - self.stackSize) and maddr <= self.stack:
						self.mapping[maddr] = 0
					else:
						fatal('Unknown concrete value for: { access = %s, rip = 0x%X }' % (macc, self.cip))
				# Initialize the concrete value (the idea would be to provide them in a dictionary extracted from a dump at runtime)
				if not avoid:
					if size == 1:
						self.tr.setConcreteMemoryValue(macc, (self.mapping[maddr] & 0xFF) if maddr in self.mapping else 0xDE)
					elif size == 2:
						self.tr.setConcreteMemoryValue(macc, (self.mapping[maddr] & 0xFFFF) if maddr in self.mapping else 0xDEAD)
					elif size == 4:
						self.tr.setConcreteMemoryValue(macc, (self.mapping[maddr] & 0xFFFFFFFF) if maddr in self.mapping else 0xDEADBEEF)
					elif size == 8:
						self.tr.setConcreteMemoryValue(macc, (self.mapping[maddr] & 0xFFFFFFFFFFFFFFFF) if maddr in self.mapping else 0xDEADBEEFDEADBEEF)
				# The value can be symbolized only if we know the address is part of the "known" stack
				if maddr >= (self.stack - self.stackSize) and maddr <= self.stack:
					self.tr.concretizeMemory(macc)
				else:
					# Initialize the symbolic memory
					mvar = self.tr.convertMemoryToSymbolicVariable(macc)
					if self.DEBUG:
						log('Symbolized memory: { name = %s, access = %s, value = 0x%X }' % (mvar, macc, self.tr.getConcreteMemoryValue(macc)))
					# Save the memory variable
					self.memory.append(mvar)

		# Handle special instructions
		if inst.getType() in [ OPCODE.X86.LEA, OPCODE.X86.NOP ]:
			return
		elif inst.getType() == OPCODE.X86.POP:
			rsp = self.tr.getConcreteRegisterValue(self.tr.registers.rsp)
			mem = MemoryAccess(rsp, inst.getOperands()[0].getSize())
			mem.setBaseRegister(self.tr.registers.rsp)
			addTritonMemory(inst, mem)
		elif inst.getType() == OPCODE.X86.POPFQ:
			rsp = self.tr.getConcreteRegisterValue(self.tr.registers.rsp)
			mem = MemoryAccess(rsp, 8)
			mem.setBaseRegister(self.tr.registers.rsp)
			addTritonMemory(inst, mem)
		# Generally handle store/load accesses
		for store in inst.getStoreAccess():
			addTritonMemory(inst, store[0])
		for load in inst.getLoadAccess():
			addTritonMemory(inst, load[0])
		for operand in inst.getOperands():
			if operand.getType() == OPERAND.MEM:
				addTritonMemory(inst, operand)

	def solveCrackme(self):
		# Get AST context
		ctx = self.tr.getAstContext()
		# Get ZF
		zf = self.tr.getRegisterAst(self.tr.registers.zf)
		zf = ctx.unrollAst(zf)
		# Simplify ZF with Z3
		zf = self.tr.simplify(zf, True)
		# Print ZF
		print 'zf: %s' % zf
		# Main condition
		con = ctx.equal(zf, ctx.bv(1, 1))
		mod = self.tr.getModel(con)
		# Check
		if mod:
			for key in mod.keys():
				print '{ Name = %s, Value = %d }' % (self.tr.getSymbolicVariableFromId(key), mod[key].getValue())
		else:
			log('Unsolvable :(')

# Main entry point

if __name__ == '__main__':

	parser = argparse.ArgumentParser()
	parser.add_argument("trace", type=str, help="The text file with the assembly to deobfuscate")
	parser.add_argument("entry", type=str, help="The entry point to start the symbolization")
	args = parser.parse_args()

	log("Symbolizing: %s" % args.trace)

	with open(args.trace, 'r') as file:

		# Create instructions map

		code = {}
		for line in file.readlines():
			line = line.strip()
			line = line.split('|')
			# Load the step context
			rip = int(line[0], 16)
			opcode = line[1].decode('hex')
			rax, rbx = int(line[2], 16), int(line[3], 16)
			rcx, rdx = int(line[4], 16), int(line[5], 16)
			rsi, rdi = int(line[6], 16), int(line[7], 16)
			rbp, rsp = int(line[8], 16), int(line[9], 16)
			r8, r9 = int(line[10], 16), int(line[11], 16)
			r10, r11 = int(line[12], 16), int(line[13], 16)
			r12, r13 = int(line[14], 16), int(line[15], 16)
			r14, r15 = int(line[16], 16), int(line[17], 16)
			# Save the step context
			code[rip] = Step(rax, rbx, rcx, rdx, rsi, rdi, rbp, rsp, r8, r9, r10, r11, r12, r13, r14, r15, rip, opcode)

		# Symbolize the instructions

		addr = int(args.entry, 16)
		sym = Symbolizer(DEBUG)
		sym.setup(code[addr])

		# Add a known memory mapping

		mapping = {
			0x19fc17 : 0x0,
			0x19fc16 : 0x0,
			0x19fc15 : 0x0,
			0x19fc14 : 0x0,
			0x19fc13 : 0x0,
			0x19fc0c : 0x0
		}
		
		sym.addKnownMemoryMapping(mapping)

		# Execute the virtual function

		start = time.time()

		while addr in code:
			addr = sym.run(code[addr], code)

		# Solve the crackme

		log('Solving the crackme...')
		sym.solveCrackme()

		end = time.time()

		log('Execution time: %s' % (end - start))