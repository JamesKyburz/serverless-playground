exports.s3 = async function ({ Records }) {
  console.log(JSON.stringify(Records, null, 2))
}
