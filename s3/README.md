# s3

### usage

in AWS

```sh
npm i
npx sls deploy
```

or locally

```sh
npm i
npx sls offline start
export AWS_ACCESS_KEY_ID='S3RVER'
export AWS_SECRET_ACCESS_KEY='S3RVER'
aws s3api list-buckets --endpoint http://localhost:4569
aws s3 cp README.md s3://document/README.md --endpoint http://localhost:4569
```

# license
[Apache License, Version 2.0](LICENSE)
