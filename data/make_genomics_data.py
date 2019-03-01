import os
from random import randint

CHARS = ['A', 'T', 'C', 'G']
NUM_FILES = 500
SEQUENCE_LENGTH = 50000

if not os.path.isfile("./genomics"):
    os.mkdir("./genomics")

for k in range(NUM_FILES):
    out_sequence = ""
    for i in range(SEQUENCE_LENGTH):
        out_sequence += CHARS[randint(0, 3)]

    with open(os.path.join("genomics", "%d.txt" % k), 'w') as f:
        f.write(out_sequence)
