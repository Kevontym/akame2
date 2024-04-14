provider "mongodbatlas" {
  public_key  = var.public_key
  private_key = var.private_key
}



curl --location --request POST 'https://us-east-2.aws.data.mongodb-api.com/app/data-jrbnf/endpoint/data/v1/action/findOne' \
--header 'Content-Type: application/json' \
--header 'Access-Control-Request-Headers: *' \
--header 'api-key: 661bc6738c4e37216b730684' \
--data-raw '{
"collection":"",
"database":"sample_analytics",
"dataSource":"Storage1",
"projection": {"_id": 1}
}'
