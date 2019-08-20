import subprocess
import re
import os

def run_command(cmd):
    """given shell command, returns communication tuple of stdout and stderr"""
    return subprocess.Popen(cmd, 
                            stdout=subprocess.PIPE, 
                            stderr=subprocess.PIPE, 
                            stdin=subprocess.PIPE).communicate()

l = run_command('..\\..\\build\\SATURN-clang-8.0 main.c -O0 -S -emit-llvm')[1]
l = run_command('..\\..\\build\\SATURN-clang-8.0 main.c -O0 -S')[1]
l = run_command('..\\..\\build\\SATURN-clang-8.0 main.c -O0 -o op1.exe')[1]
# print l

# get address of the test function
#line=$(../../build/saturn -i op1 -f 0x0 -printSymbols -runtime=0 | grep test0)
#arr=($(echo $line | tr " " "\n"))
#echo "${arr[0]}"

l = run_command("..\\..\\build\\Release\\saturn -i op1.exe -f 0x0 -printSymbols -runtime=0")[0]
#print l
S = re.findall("^.*test0.*$", l, re.MULTILINE)
Addr = S[0].split(' ')[0]

# lift test function
#../../build/saturn -i op1 -f "${arr[0]}" -o lifted.ll -runtime=../../build/saturn_helpers.bc
l = run_command("..\\..\\build\\Release\\saturn -i op1.exe -f " + Addr + " -o lifted.ll -runtime=../../build/saturn_helpers.bc -gadgetMode -useMSx64Abi -setConcreteFunctionVA -applysouper -stp-path=c:\\saturntests\\stp.exe -souper-external-cache=true -recoverarguments -createStackSlots")[0]
#print l

l = run_command('..\\..\\build\\SATURN-clang-8.0 lifted.ll -O3 -S -mllvm --x86-asm-syntax=intel')[1]

# optimize lifted ir
#../../build/SATURN-clang-8.0 lifted.ll -O3 -S -emit-llvm
os.system("..\\..\\translater\\translate64.py " + "..\\..\\ " + " lifted.ll")

# run the test and check if we have the expected result
l = run_command("op1_.exe")[0]
lo = run_command("op1.exe")[0]


Passed = False
if l == lo:
	print '[*] Test Passed!'
	Passed = True
else:
	print '[!] Test failed!'
	Passed = False

# Clean up
exit(Passed)
os.remove("main.ll")
os.remove("main.s")
os.remove("saturn.dll")
os.remove("saturn.exp")
os.remove("saturn.lib")
os.remove("GenRemillConstants32.exe")
os.remove("HelperAsm.obj")
os.remove("lifted.ll")
os.remove("lifted.s")
os.remove("op1.exe")
os.remove("op1.exp")
os.remove("op1.lib")
os.remove("op1_.exe")
os.remove("remill.asm")

exit(Passed)
