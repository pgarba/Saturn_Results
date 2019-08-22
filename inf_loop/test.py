import subprocess
import re
import os

# Function name to lift
FunctionName = "loop"

def run_command(cmd):
    """given shell command, returns communication tuple of stdout and stderr"""
    return subprocess.Popen(cmd, 
                            stdout=subprocess.PIPE, 
                            stderr=subprocess.PIPE, 
                            stdin=subprocess.PIPE).communicate()

l = run_command('..\\..\\build\\SATURN-clang-8.0 main.c -O0 -S -emit-llvm')[1]
l = run_command('..\\..\\build\\SATURN-clang-8.0 main.c -O0 -o test.exe')[1]
print l

# get address of the test function
l = run_command("..\\..\\build\\Release\\saturn -i test.exe -f 0x0 -printSymbols -runtime=0")[0]
S = re.findall("^.*" + FunctionName + ".*$", l, re.MULTILINE)
Addr = S[0].split(' ')[0]

# lift test function
print "..\\..\\build\\Release\\saturn -i test.exe -f " + Addr + " -o lifted.ll -runtime=../../build/saturn_helpers.bc -gadgetMode -printdebug -setConcreteFunctionVA -setConcreteStackRegister -useMSx64Abi"
l = run_command("..\\..\\build\\Release\\saturn -i test.exe -f " + Addr + " -o lifted.ll -runtime=../../build/saturn_helpers.bc -gadgetMode -printdebug -setConcreteFunctionVA -recoverarguments -useMSx64Abi")[0]

l = run_command("..\\..\\build\\Release\\saturn -i test.exe -f " + Addr + " -o lifted.ll -runtime=../../build/saturn_helpers.bc -gadgetMode -printdebug -setConcreteFunctionVA -applysouper -stp-path=c:\\saturntests\\stp.exe -souper-external-cache=true -memdep-block-scan-limit=100000 -recoverarguments -useMSx64Abi -createStackSlots")[0]
file = open("saturn_log.log","w")  
file.write(l) 
file.close() 

# assemble lifted.ll
l = run_command('..\\..\\build\\SATURN-clang-8.0 lifted.ll -O3 -S -mllvm --x86-asm-syntax=intel')[1]

# optimize lifted ir
l = os.system("..\\..\\translater\\translate64.py " + "..\\..\\ " + " lifted.ll")

# run the test and check if we have the expected result
l = run_command("test_.exe 7")[0]
S = re.findall("^.*assed.*$", l, re.MULTILINE)
Result =  S[0].split(' ')[1]

Passed = False
if Result.strip() == 'Passed!':
	print '[*] Test Passed!'
	Passed = True
else:
	print '[!] Test failed!'
	Passed = False

# Clean up
exit(Passed)
os.remove("main.ll")
os.remove("saturn.dll")
os.remove("saturn.exp")
os.remove("saturn.lib")
os.remove("GenRemillConstants32.exe")
os.remove("HelperAsm.obj")
os.remove("lifted.ll")
os.remove("test.exe")
os.remove("test.exp")
os.remove("test.lib")
os.remove("test_.exe")
os.remove("remill.asm")

exit(Passed)