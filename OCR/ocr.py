
import cv2
import pytesseract
import numpy as np

def ocr(input_file, output_file):
# Load the image using OpenCV
    image = cv2.imread(input_file)

    # Convert the image to grayscale
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    # Apply Gaussian blur to the image
    blur = cv2.GaussianBlur(gray, (3,3), 0)

    # Apply adaptive thresholding to the image
    thresh = cv2.adaptiveThreshold(blur, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 3, 3)


    text = pytesseract.image_to_string(thresh)
    f = open(output_file, 'a')
    f.write(text)
    f.close()


    # Print the recognized text
    print(text)

images = ['/Users/ishaanmahajan/VR-Toolkit/images/ocr_images/sample1.png', '/Users/ishaanmahajan/VR-Toolkit/images/ocr_images/sample2.png', '/Users/ishaanmahajan/VR-Toolkit/images/ocr_images/sample3.png']
for i in range(len(images)):
    ocr(images[i], '/Users/ishaanmahajan/VR-Toolkit/OCR/ocr_output/output_' + str(i + 1) + '.txt')