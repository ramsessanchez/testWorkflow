import filecmp
import sys

dir1 = sys.argv[1]
dir2 = sys.argv[2]

filecmp.cmpfiles(dir1, dir2, shallow= True)



