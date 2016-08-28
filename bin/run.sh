docker stop nginx-emoji
docker rm nginx-emoji

docker run \
  -d \
  -p 80:80 \
  --name nginx-emoji \
  --link flask-emoji:flask-emoji \
  nginx-emoji
