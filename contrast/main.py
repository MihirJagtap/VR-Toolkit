import os
import argparse
from cdf_histogram import cdf_histogram

def main():
    parser = argparse.ArgumentParser()
    
    parser.add_argument("--input_path", default="../images/contrast_examples/input/reindeer_input.png", type=str,
                        help="Path of Input Image")
    parser.add_argument("--output_path", default="../images/contrast_examples/output/reindeer_output.png", type=str,
                        help="Path of Outut Image")
    parser.add_argument("--method", default="Stretching", type=str,
                        help="Either Strecthing, Histogram, Novel")
    parser.add_argument("--hist_path", default="../images/contrast_histograms/reindeer.png", type=str,
                        help="Path of Histogram Image to Save")
    
    args = parser.parse_args()
    
    assert args.method in ['Stretching', 'HistEq', 'AdaptiveHistEq', 'Novel'], "Either Strecthing, Histogram, Novel"
    
    cdf_histogram(args)
    
if __name__ == "__main__":
    main()