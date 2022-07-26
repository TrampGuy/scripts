## declare an array variable
declare -a arr=(
  "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"
  "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"
  )

idx=0
for link in ${arr[@]}
do  
    idx=$(expr $idx + 1)
    ffmpeg -i "${link}" -c copy -bsf:a aac_adtstoasc "video${idx}.mp4"
done
