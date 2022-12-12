cd contrast

#Stretching
python3 main.py --input_path ../images/contrast_examples/input/fruits_bw.png  --output_path ../images/contrast_examples/output/stretching/fruits_output.png --method Stretching --hist_path ../images/contrast_histograms/stretching/fruits.png

python3 main.py --input_path ../images/contrast_examples/input/multicolor_bw.png  --output_path ../images/contrast_examples/output/stretching/multicolor_output.png --method Stretching --hist_path ../images/contrast_histograms/stretching/multicolor.png

python3 main.py --input_path ../images/contrast_examples/input/reindeer_bw.png  --output_path ../images/contrast_examples/output/stretching/reindeer_output.png --method Stretching --hist_path ../images/contrast_histograms/stretching/reindeer.png

python3 main.py --input_path ../images/contrast_examples/input/scene_bw.png  --output_path ../images/contrast_examples/output/stretching/scene_output.png --method Stretching --hist_path ../images/contrast_histograms/stretching/scene.png

python3 main.py --input_path ../images/contrast_examples/input/lowlight_bw.png  --output_path ../images/contrast_examples/output/stretching/lowlight_output.png --method Stretching --hist_path ../images/contrast_histograms/stretching/lowlight.png

python3 main.py --input_path ../images/contrast_examples/input/text_bw.png  --output_path ../images/contrast_examples/output/stretching/text_output.png --method Stretching --hist_path ../images/contrast_histograms/stretching/text.png

#Novel Method
python3 main.py --input_path ../images/contrast_examples/input/fruits_input.png  --output_path ../images/contrast_examples/output/novel/fruits_output.png --method Novel --hist_path ../images/contrast_histograms/novel/fruits.png

python3 main.py --input_path ../images/contrast_examples/input/multicolor_input.png  --output_path ../images/contrast_examples/output/novel/multicolor_output.png --method Novel --hist_path ../images/contrast_histograms/novel/multicolor.png

python3 main.py --input_path ../images/contrast_examples/input/reindeer_input.png  --output_path ../images/contrast_examples/output/novel/reindeer_output.png --method Novel --hist_path ../images/contrast_histograms/novel/reindeer.png

python3 main.py --input_path ../images/contrast_examples/input/scene_input.png  --output_path ../images/contrast_examples/output/novel/scene_output.png --method Novel --hist_path ../images/contrast_histograms/novel/scene.png

python3 main.py --input_path ../images/contrast_examples/input/lowlight_input.png  --output_path ../images/contrast_examples/output/novel/lowlight_output.png --method Novel --hist_path ../images/contrast_histograms/novel/lowlight.png

python3 main.py --input_path ../images/contrast_examples/input/text_input.png  --output_path ../images/contrast_examples/output/novel/text_output.png --method Novel --hist_path ../images/contrast_histograms/novel/text.png

#Histogram Equalization
python3 main.py --input_path ../images/contrast_examples/input/fruits_input.png  --output_path ../images/contrast_examples/output/histogram/regular/fruits_histeq_output.png --method HistEq --hist_path ../images/contrast_histograms/histogram/regular/fruits.png

python3 main.py --input_path ../images/contrast_examples/input/multicolor_input.png  --output_path ../images/contrast_examples/output/histogram/regular/multicolor_histeq_output.png --method HistEq --hist_path ../images/contrast_histograms/histogram/regular/multicolor.png

python3 main.py --input_path ../images/contrast_examples/input/reindeer_input.png  --output_path ../images/contrast_examples/output/histogram/regular/reindeer_histeq_output.png --method HistEq --hist_path ../images/contrast_histograms/histogram/regular/reindeer.png

python3 main.py --input_path ../images/contrast_examples/input/scene_input.png  --output_path ../images/contrast_examples/output/histogram/regular/scene_histeq_output.png --method HistEq --hist_path ../images/contrast_histograms/histogram/regular/scene.png

python3 main.py --input_path ../images/contrast_examples/input/lowlight_input.png  --output_path ../images/contrast_examples/output/histogram/regular/shadow_histeq_output.png --method HistEq --hist_path ../images/contrast_histograms/histogram/regular/lowlight.png

python3 main.py --input_path ../images/contrast_examples/input/text_input.png  --output_path ../images/contrast_examples/output/histogram/regular/text_histeq_output.png --method HistEq --hist_path ../images/contrast_histograms/histogram/regular/text.png 

#Adaptive Histogram Equalization
python3 main.py --input_path ../images/contrast_examples/input/fruits_input.png  --output_path ../images/contrast_examples/output/histogram/adaptive/fruits_adapthisteq_output.png --method AdaptiveHistEq --hist_path ../images/contrast_histograms/histogram/adaptive/fruits.png

python3 main.py --input_path ../images/contrast_examples/input/multicolor_input.png  --output_path ../images/contrast_examples/output/histogram/adaptive/multicolor_adapthisteq_output.png --method AdaptiveHistEq --hist_path ../images/contrast_histograms/histogram/adaptive/multicolor.png

python3 main.py --input_path ../images/contrast_examples/input/reindeer_input.png  --output_path ../images/contrast_examples/output/histogram/adaptive/reindeer_adapthisteq_output.png --method AdaptiveHistEq --hist_path ../images/contrast_histograms/histogram/adaptive/reindeer.png

python3 main.py --input_path ../images/contrast_examples/input/scene_input.png  --output_path ../images/contrast_examples/output/histogram/adaptive/scene_adapthisteq_output.png --method AdaptiveHistEq --hist_path ../images/contrast_histograms/histogram/adaptive/scene.png

python3 main.py --input_path ../images/contrast_examples/input/lowlight_input.png  --output_path ../images/contrast_examples/output/histogram/adaptive/shadow_adapthisteq_output.png --method AdaptiveHistEq --hist_path ../images/contrast_histograms/histogram/adaptive/lowlight.png

python3 main.py --input_path ../images/contrast_examples/input/text_input.png  --output_path ../images/contrast_examples/output/histogram/adaptive/text_adapthisteq_output.png --method AdaptiveHistEq --hist_path ../images/contrast_histograms/histogram/adaptive/text.png