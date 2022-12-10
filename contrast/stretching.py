from PIL import Image
import os
import argparse
import time

parser = argparse.ArgumentParser()    
parser.add_argument("--image_path", default="../images/contrast_examples/input/reindeer_input.png", type=str,
                        help="Path of Image to Apply Strecthing")
parser.add_argument("--input_path", default="../images/contrast_examples/input/reindeer_input.png", type=str,
                        help="Path of Input Image (GrayScale)")
parser.add_argument("--output_path", default="../images/contrast_examples/output/reindeer_output.png", type=str,
                        help="Path of Outut Image (GrayScale)")
args = parser.parse_args()

def strecthing():
    print("#"*40)
    start_time = time.time()
    print("Performing Contrasting By Stretching...")
    inputImage = Image.open(args.image_path).convert('L')
    inputImage.save(args.input_path)    
    outputImage = Image.new('L', inputImage.size)
    
    minIntensity = 255
    maxInsenity = 0
    width, height = inputImage.size

    for x in range(width):
        for y in range(height):
            intensity = inputImage.getpixel((x,y))
            minIntensity = min(minIntensity, intensity)
            maxInsenity = max(maxInsenity, intensity)

    for x in range(width):
        for y in range(height):
            intensity = inputImage.getpixel((x,y))
            newIntensity = 255 * ((intensity - minIntensity) / (maxInsenity - minIntensity))
            outputImage.putpixel((x,y), int(newIntensity))

    outputImage.save(args.output_path)
    print("--- %s seconds ---" % (time.time() - start_time))
    print("#"*40)
    
if __name__ == "__main__":
    strecthing()