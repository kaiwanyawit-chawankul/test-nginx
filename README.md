[![Test with Docker Compose](https://github.com/kaiwanyawit-chawankul/test-nginx/actions/workflows/test.yml/badge.svg)](https://github.com/kaiwanyawit-chawankul/test-nginx/actions/workflows/test.yml)

# Run

docker-compose up --build

# Test

```
http://localhost/api/swagger
http://localhost/setup/imposters
http://localhost/stub/api/feature1 ->this will not work until you run a snippet from add endpoint
```

# Test connection

```
docker ps
docker exec XXXXX curl
```
# Add endpoint

```
curl -X POST -H "Content-Type: application/json" -d "@mock.json" http://localhost/setup/imposters
```


# Credit
 - https://domysee.com/blogposts/reverse-proxy-nginx-docker-compose
 - https://www.digitalocean.com/community/tutorials/how-to-set-up-laravel-nginx-and-mysql-with-docker-compose-on-ubuntu-20-04