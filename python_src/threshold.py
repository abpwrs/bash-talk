from PIL import Image
import argparse
import os
from time import sleep

parser = argparse.ArgumentParser()
parser.add_argument("-f", "--file", help="File to threshold", required=True)
parser.add_argument(
    "-t",
    "--threshold",
    help="Integer value to set as threshold",
    required=True)
parser.add_argument("-o", "--output-dir", default=os.getcwd())
args = parser.parse_args()

image = Image.open(args.file)

image = image.point(lambda p: p > int(args.threshold) and 255)

file_name, file_extension = os.path.splitext(os.path.split(args.file)[1])
out_file = os.path.join(
    args.output_dir, "{file_name}_{thresh}{ext}".format(
        file_name=file_name, thresh=args.threshold, ext=file_extension))

image.save(out_file)

# add if you want to have a delay and run programs in the background using &
# sleep(10)