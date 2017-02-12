require "opencv/version"
require 'opencv'
include OpenCV

#画像を読み込む
src_img = CvMat.load('images/PCuWF.png')
src2_img = CvMat.load('images/rSqLE.png')

gray_img = src_img.BGR2GRAY # gray scale
diff_img = src_img.abs_diff src2_img
bin_diff_img = diff_img.threshold(0, 255, :binary)
diff_sub = src_img.sub bin_diff_img

gray_img.save_image "./images/results/gray_img.png"
diff_img.save_image "./images/results/diff_result.png"
bin_diff_img.save_image "./images/results/bin_diff_img.png"
diff_sub.save_image "./images/results/diff_sub.png"
