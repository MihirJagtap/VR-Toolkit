from PIL import Image

import pyTesseract
pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'
import numpy as np

filename = 'image_to_text.jpeg'
img1 = np.array(Image.open(filename))
text = pyTesseract.image_to_string(img1)

print(text)