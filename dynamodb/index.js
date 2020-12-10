const AWS = require('aws-sdk')

exports.trigger = async event => {
  console.log(JSON.stringify(event.Records, null, 2))
  const docClient = new AWS.DynamoDB.DocumentClient()
  const map = docClient.getTranslator()
  const Shape = docClient.service.api.operations.getItem.output.members.Item
  console.log(
    JSON.stringify(
      event.Records.map(x => map.translateOutput(x.dynamodb.NewImage, Shape)),
      null,
      2
    )
  )
}
