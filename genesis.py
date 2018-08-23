import argparse, json, sys, binascii

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('precompiles', metavar='N', type=str, nargs='+',
                            help='a string of the form address,codefile')
parser.add_argument('--genesis', metavar='g', type=str, nargs='?',
                            help='a string of the form address,codefile')

genesis = None

try:
  with open('genesis.json') as f:
    genesis = json.load(f)
except Exception as e:
  print(e)
  sys.exit(1)

args = parser.parse_args()

for arg in args.precompiles:
  address = arg.split(",")[0] #TODO validation
  codefile = arg.split(",")[1]

  try:
    with open(codefile, 'rb') as f:
      genesis['alloc'][address] = binascii.hexlify(f.read())
  except Exception as e:
    print(e)
    sys.exit(1)

print genesis
