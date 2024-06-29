apt update -y
apt upgrade -y
apt install ffmpeg -y



ffmpeg -stream_loop -1 -re -i neffex.mp4 -stream_loop -1 -re -i http://stream.zeno.fm/9kaed9hws98uv -vcodec libx264 -pix_fmt yuvj420p -maxrate 500k -preset ultrafast -r 1 -g 50 -c:a aac -b:a 128k -ar 44100 -strict experimental -video_track_timescale 1000 -b:v 150k -f flv  rtmp://a.rtmp.youtube.com/live2/v159-247t-f65k-0u0b-253r
