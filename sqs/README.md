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
export AWS_ACCESS_KEY_ID=x
export AWS_SECRET_ACCESS_KEY=x
export AWS_DEFAULT_REGION=us-east-1
aws sqs list-queues --endpoint http://localhost:9324
aws sqs send-message --queue-url http://localhost:9324/queue/q --message-body '{"hi": "there"}' --endpoint http://localhost:9324
```

```sh
docker-compose down
```

# license
[Apache License, Version 2.0](LICENSE)
