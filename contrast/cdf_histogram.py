import numpy as np
import matplotlib.pyplot as plt
from PIL import Image
import cv2 as cv
import time

def cdf_histogram(args):
    print("#"*40)
    start_time = time.time()
    f, (ax1, ax2) = plt.subplots(1, 2, figsize=(15, 5), sharey=True)
    f.suptitle(f"Contrasting by {args.method}", fontsize=15)

    img = cv.imread(args.input_path, 0)
    hist, bins = np.histogram(img.flatten(), 256, [0, 256])
    normcdf = (hist.cumsum()/hist.cumsum().max()) * hist.max()

    ax1.plot(normcdf, color = 'blue')
    ax1.hist(img.flatten(), 256, [0, 256], color='orange')
    ax1.set_xlim([0, 256])
    ax1.title.set_text("Histogram Before Contrasting")
    ax1.legend(('CDF', 'Histogram'))

    img = cv.imread(args.output_path, 0)
    hist, bins = np.histogram(img.flatten(), 256, [0, 256])
    normcdf = (hist.cumsum()/hist.cumsum().max()) * hist.max()

    ax2.plot(normcdf, color = 'blue')
    ax2.hist(img.flatten(), 256, [0, 256], color='orange')
    ax2.set_xlim([0, 256])
    ax2.title.set_text("Histogram After Contrasting")
    ax2.legend(('CDF', 'Histogram'))
    
    print("Generating and Saving Histogram...")
    plt.savefig(args.hist_path)
    print("--- %s seconds ---" % (time.time() - start_time))
    print("#"*40)
    
