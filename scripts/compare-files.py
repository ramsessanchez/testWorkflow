import filecmp
import sys

dir1 = sys.argv[1]
dir2 = sys.argv[2]

common = ["hello.txt", "world.txt"]

match, mismatch, errors = filecmp.cmpfiles(dir1, dir2, common, shallow= False)

print("Deep Comparison")
print("Match: ", match)
print("Mismatch: ", mismatch)
print("Errors: ", errors)

