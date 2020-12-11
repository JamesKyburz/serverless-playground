# docker lambda

### usage

```sh
../cli.sh
cd /work/docker
./build.sh
./push-2-ecr.sh
```

or locally

```sh
./build.sh
docker run -p 9000:8080 --rm --name docker-lambda -d docker-lambda
curl -vXPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"payload":"hello world!"}'
docker ps --filter=name=docker-lambda -q | xargs docker stop
```

# license
[Apache License, Version 2.0](LICENSE)
