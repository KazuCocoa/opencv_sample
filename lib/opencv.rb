require "opencv/version"
require 'opencv'
include OpenCV

#画像を読み込む
src_img = CvMat.load('images/PCuWF.png')

gray_img = src_img.BGR2GRAY
bin_img = gray_img.threshold(128, 255, :binary)
canny_img = src_img.BGR2GRAY.canny(120,200)

gray_img.save_image "./images/results/gray_result.png"
bin_img.save_image "./images/results/bin_result.png"
canny_img.save_image "./images/results/canny_result.png"
