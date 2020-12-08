# sqs

### usage

in AWS

```sh
npm i
npx sls deploy
```

or locally

```sh
docker-compose up -d
npx sls offline start
```

```sh
export aws_access_key_id=x
export aws_secret_access_key=x
export aws_default_region=us-east-1
aws sqs list-queues --endpoint http://localhost:9324
aws sqs send-message --queue-url http://localhost:9324/queue/q --message-body '{"hi": "there"}' --endpoint http://localhost:9324
```

```sh
docker-compose down
```

# license
[Apache License, Version 2.0](LICENSE)
