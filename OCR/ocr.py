
import cv2
import pytesseract
import numpy as np

# Load the image using OpenCV
image = cv2.imread("/Users/ishaanmahajan/VR-Toolkit/OCR/sample1.png")

# Convert the image to grayscale
gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

# Apply Gaussian blur to the image
blur = cv2.GaussianBlur(gray, (3,3), 0)

# Apply adaptive thresholding to the image
thresh = cv2.adaptiveThreshold(blur, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 3, 3)


text = pytesseract.image_to_string(thresh)

# Print the recognized text
print(text)
