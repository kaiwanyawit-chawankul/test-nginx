# run

docker-compose up --build

# test

http://localhost/api/swagger
http://localhost/setup/imposters
http://localhost/stub/api/feature1


# test connection

```
docker ps
docker exec XXXXX curl
```
# add endpoint

```
curl -X POST -H "Content-Type: application/json" -d "@mock.json" http://localhost/setup/imposters
```



# Credit

https://domysee.com/blogposts/reverse-proxy-nginx-docker-compose

https://www.digitalocean.com/community/tutorials/how-to-set-up-laravel-nginx-and-mysql-with-docker-compose-on-ubuntu-20-04