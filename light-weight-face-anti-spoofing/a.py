import argparse
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--input",help="source directory",
        dest="input",required=True)
args = parser.parse_args()
print(type(args))
