# VR-Toolkit

Comp Sci 639 Project: Virtual Reality Toolkit

## Command to run Stretching:

`python3 stretching.py --image_path [IMG_PATH] --input_path [BW_PATH] --output_path [OUT_PATH]`

- `[IMG_PATH]`: Path of input image
- `[BW_PATH]`: Path to store grayscale image of input generated
- `[OUT_PATH]`: Path to store output grayscale image after contrasting

## Command to generate Histogram+CDF from a set of input-output images

`python3 main.py --input_path [IN_PATH] --output_path [OUT_PATH] --method [METHOD] --hist_path [HIST_PATH]`

- `[IN_PATH]`: Path of input contrast image
- `[OUT_PATH]`: Path of output contrast image
- `[METHOD]`: Method used to generate this contrast - `[Stretching, Histogram, Novel]`
- `[HIST_PATH]`: Path to store the histogram
