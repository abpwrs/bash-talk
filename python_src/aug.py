from imgaug import augmenters as iaa
from time import sleep
import numpy as np
from PIL import Image
import argparse
import os

parser = argparse.ArgumentParser()
parser.add_argument("-f", "--file", help="File to threshold", required=True)
parser.add_argument("-o", "--output-dir", default=os.getcwd())
args = parser.parse_args()

file_name, file_extension = os.path.splitext(os.path.split(args.file)[1])

images = {}
image = np.array(Image.open(args.file))
images[os.path.split(args.file)[1]] = image

flipper = iaa.Fliplr(1.0)
images["{base}_LR{ext}".format(
    base=file_name, ext=file_extension)] = flipper.augment_image(image)

tmp = {}
vflipper = iaa.Flipud(1.0)
for f_name, img in images.items():
    split = os.path.splitext(f_name)
    tmp["{base}_UD{ext}".format(base=split[0],
                                ext=split[1])] = vflipper.augment_image(img)

for k, v in tmp.items():
    images[k] = v

tmp = {}
blurs = [3.0, 5.0, 10.0, 20.0]
for blur in blurs:
    blurrer = iaa.GaussianBlur(blur)
    for f_name, img in images.items():
        split = os.path.splitext(f_name)
        tmp["{base}_B{blur}{ext}".format(
            base=split[0], blur=str(blur),
            ext=split[1])] = blurrer.augment_image(img)

for k, v in tmp.items():
    images[k] = v

for f_name, image in images.items():
    Image.fromarray(image).save(os.path.join(args.output_dir, f_name))

sleep(10)