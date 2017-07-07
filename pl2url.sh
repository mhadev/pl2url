#!/bin/bash
echo "--------------------------------"
echo "This script gets the url of a youtube playlist & gives URL list 
of the playlist in txt format."
echo "Text file which contains URLs will be placed in the same directory 
as this script"
echo "--------------------------------"
echo "> ENTER THE YOUTUBE PLAYLIST ADDRESS :"
read address
wget -O .pl.html $address
cat .pl.html |grep "watch?v=" |grep '<a class="pl-video-title-link' |cut -d"&" -f1 |cut -d'"' -f6 |sort -u > .tmp.txt
sed -e 's/^/https:\/\/www.youtube.com/' .tmp.txt > playlistUrls.txt
rm -rf .tmp.txt
rm -rf .pl.html
echo "--------------------"
echo "Text file created."
echo "--------------------"
echo "By"
echo "+ mhadev"
echo "+ https://github.com/mhadev"
echo "+ Mohammad Hossein Amini"
echo "+ mhaminidev@gmail.com"
echo "+ Release Date: 2017/July/07"
