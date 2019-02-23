#!/bin/bash


IMAGE=/home/tchakatak/Nextcloud/Wallpaper/Wallpaper/170101.png


# Alternate screenshot method with imagemagick. NOTE: it is much slower
# SCREENSHOT="import -window root $IMAGE" # 1.35s

# Here are some imagemagick blur types
# Uncomment one to use, if you have multiple, the last one will be used

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
#BLURTYPE="0x5" # 7.52s
#BLURTYPE="0x2" # 4.39s
#BLURTYPE="5x2" # 3.80s
#BLURTYPE="2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s
#BLURTYPE="1x8"

# Get the screenshot, add the blur and lock the screen with it

#convert $IMAGE -blur $BLURTYPE $IMAGE
i2lock -c 000000
