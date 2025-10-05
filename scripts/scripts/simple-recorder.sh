#!/usr/bin/env bash

options=("Record Screen With Audio (x264+mp3)" "Record Screen With Audio (lossless)" "Record Framebuffer (/dev/fb0)")
video_file=$1
PS3="> "

if [ -z "$video_file" ]; then
	echo "No Video Output Name Provided"
	exit 1
fi

echo "Please select a recording option:"
select choice in "${options[@]}"
do
	case $choice in
		"Record Screen With Audio (x264+mp3)")
			ffmpeg -video_size 2256x1504 -framerate 60 -f x11grab -i :0.0 -f pulse -ac 2 -i 52 -c:v libx264 -preset medium -crf 23 -c:a mp3 -b:a 320k "$video_file"
			exit
			;;
		"Record Screen With Audio (lossless)")
			ffmpeg -video_size 2256x1504 -framerate 60 -f x11grab -i :0.0 -f pulse -ac 2 -i 52 -c:v libx264 -preset veryslow -qp 0 -c:a flac "$video_file"
			exit
			;;
		"Record Framebuffer (/dev/fb0)")
			ffmpeg -f fbdev -framerate 24 -i /dev/fb0 -c:v libx264 -preset medium -crf 23 "$video_file"
			exit
			;;
		"Exit Program")
			break
			;;
		*)
			echo "Invalid Option Selected"
			;;
	esac
done
