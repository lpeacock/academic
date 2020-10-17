import os
from os import walk
from os import listdir
from os import mkdir
from os.path import isfile, join, exists
from shutil import copyfile

mypath = os.path.dirname(os.path.realpath(__file__))


labfolders = [f for f in listdir(mypath) if f[:3] == "lab" and os.path.isdir(mypath +"/" + f)]

labfiles = {}
for folder in labfolders:
    newdir = mypath + "/" + folder + "/" + folder + ".srcs/sources_1/new"

    for f in listdir(newdir):
        if os.path.isfile(newdir + "/" + f):
            labfiles[newdir + "/" + f] = f
    
print (labfiles.keys())

if(not exists(mypath + "\\code")):
    os.mkdir(mypath + "\\code")
    
for file in labfiles.keys():
    newfilename = mypath + "\\code\\" + labfiles[file]
    copyfile(file, newfilename)
    
    with open(newfilename, "r") as f:
        lines = f.readlines()
        
    with open(newfilename, "w") as f:
        start = False;
        
        for line in lines:
            
            if line.strip("\n")[:7] == "module ":
                f.write(line)
                start = True;
                
            elif line.strip("\n")[:9] == "endmodule ":
                f.write(line.strip("\n"))
                break
            
            elif start:
                f.write(line)
                        
