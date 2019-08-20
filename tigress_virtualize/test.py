import subprocess
import re
import os

def run_command(cmd):
    """given shell command, returns communication tuple of stdout and stderr"""
    return subprocess.Popen(cmd, 
                            stdout=subprocess.PIPE, 
                            stderr=subprocess.PIPE, 
                            stdin=subprocess.PIPE).communicate()

l = run_command('..\\..\\build\\SATURN-clang-8.0 result.c -O0 -S -emit-llvm')[1]
l = run_command('..\\..\\build\\SATURN-clang-8.0 result.c -O0 -S')[1]
l = run_command('..\\..\\build\\SATURN-clang-8.0 result.c -O0 -o test.exe')[1]
#print l

# get address of the test function
#line=$(../../build/saturn -i op1 -f 0x0 -printSymbols -runtime=0 | grep test0)
#arr=($(echo $line | tr " " "\n"))
#echo "${arr[0]}"

l = run_command("..\\..\\build\\Release\\saturn -i test.exe -f 0x0 -printSymbols -runtime=0")[0]
#print l
S = re.findall("^.*func0.*$", l, re.MULTILINE)
Addr = S[0].split(' ')[0]

# lift test function
# !!! argument detection does not work now ... related to setConcreteStackRegister !!!!
#print "..\\..\\build\\Release\\saturn -i test.exe -f " + Addr + " -o lifted.ll -runtime=../../build/saturn_helpers.bc -gadgetMode -setConcreteFunctionVA -printdebug -useMSx64Abi -recoverarguments"
l = run_command("..\\..\\build\\Release\\saturn -i test.exe -f " + Addr + " -o lifted.ll -runtime=../../build/saturn_helpers.bc -gadgetMode -setConcreteFunctionVA -printdebug -useMSx64Abi -recoverarguments -createStackSlots -constantPool=0x14001D010-0x14001D0BC")[0]
#print l


l = run_command('..\\..\\build\\SATURN-clang-8.0 lifted.ll -O3 -S -mllvm --x86-asm-syntax=intel')[1]


# optimize lifted ir
#../../build/SATURN-clang-8.0 lifted.ll -O3 -S -emit-llvm
os.system("..\\..\\translater\\translate64.py " + "..\\..\\ " + " lifted.ll")

# run the test and check if we have the expected result
l = run_command("test_.exe 1 2 3")[0]
lo = run_command("test.exe 1 2 3")[0]

Passed = False
if l == lo:
	print '[*] Test Passed!'
	Passed = True
else:
	print '[!] Test failed!'
	Passed = False

# Clean up
exit(Passed)
os.remove("result.ll")
os.remove("result.s")
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