# dynamodb

### usage

in AWS

```sh
npm i
npx sls deploy
```

or locally

```sh
docker-compose up -d
npx sls --stage=local -c dynamodb.local.yml dynamodb migrate
npx sls --stage=local offline start
```

```sh
export AWS_ACCESS_KEY_ID=x
export AWS_SECRET_ACCESS_KEY=x
export AWS_DEFAULT_REGION=us-east-1
aws dynamodb put-item --table-name local-db --item '{"pk": { "S": "X" }, "sk": { "S": "YX" }}' --endpoint http://localhost:8000
```

```sh
npx dynamodb-query-cli --endpoint http://localhost:8000
```

```sh
docker-compose down
```

# license
[Apache License, Version 2.0](LICENSE)
