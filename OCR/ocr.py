
import cv2
import pytesseract
import numpy as np
import pyttsx3

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
    f.seek(0)
    f.truncate()
    f.write(text)
    f.close()

    # Print the recognized text
    print(text)
    return text

def text_to_speech(text,audio_file):
    
    convertor = pyttsx3.init()  
    voices = convertor.getProperty('voices')
    convertor.setProperty('voices', voices[0].id)
    convertor.save_to_file(text, audio_file)
    #convertor.say(text)
    convertor.runAndWait()

images = ['../images/ocr_images/sample1.png', '../images/ocr_images/sample2.png', '../images/ocr_images/sample3.png',
'../images/ocr_images/sample4.png', '../images/ocr_images/sample5.png', '../images/ocr_images/sample6.png', 
'../images/ocr_images/sample7.png' #histogram/adaptive
,'../images/contrast_examples/output/novel/text_output.png' #output/novel
 ,'../images/ocr_images/sample9.png' # histogram/regular
 ]

for i in range(len(images)):
    text = ocr(images[i], 'ocr_output/text_output/output_' + str(i + 1) + '.txt')
    text_to_speech(text,'ocr_output/audio_output/audio_' + str(i + 1) + '.mp3')

