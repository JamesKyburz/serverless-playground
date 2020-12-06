```sh
./build.sh
docker run -p 9000:8080 --name docker-lambda -d docker-lambda
curl -vXPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"payload":"hello world!"}'
docker ps --filter=name=docker-lambda -q | xargs docker stop
```
