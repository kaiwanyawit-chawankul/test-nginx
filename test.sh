docker build . -t nginx:job
#docker run -p 127.0.0.1:80:80 nginx:job
docker run -p 127.0.0.1:8080:80 nginx:job

docker run -it --rm -p 8080:80 --name web nginx

docker run -it --rm -p 80:80 --name web nginx:alpine
docker run -it --rm -p 2525:2525 --name stub bbyars/mountebank:latest