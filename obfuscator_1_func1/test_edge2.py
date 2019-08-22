import subprocess
import re
import os

# Configure saturn path
SaturnPATH='c:\\saturn'

# Configure the bianry to lift
BinaryName = 'xxxxxxx.exe'
Addr = "0x146253057"

# Function name to lift
FunctionName = "edges"

def run_command(cmd):
    """given shell command, returns communication tuple of stdout and stderr"""
    return subprocess.Popen(cmd, 
                            stdout=subprocess.PIPE, 
                            stderr=subprocess.PIPE, 
                            stdin=subprocess.PIPE).communicate()

# lift test function
print SaturnPATH + "\\build\\Release\\saturn -i " + BinaryName  + " -f " + Addr + " -o lifted_146253057.ll -runtime=" + SaturnPATH + "/build/saturn_helpers.bc -printdebug -setConcreteFunctionVA -setConcreteStackRegister -useMSx64Abi"
l = run_command(SaturnPATH + "\\build\\Release\\saturn -i " + BinaryName  + " -f " + Addr + " -o lifted_146253057.ll -runtime=" + SaturnPATH + "/build/saturn_helpers.bc  -printdebug -setConcreteFunctionVA -recoverarguments -useMSx64Abi")[0]
print l

# Clean up
exit()