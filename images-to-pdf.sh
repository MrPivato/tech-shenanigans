sudo apt install imagemagick-6.q16
sudo mv /etc/ImageMagick-6/policy.xml /etc/ImageMagick-6/policy.xmlout
convert $(ls -v *.png) my-file.pdf
