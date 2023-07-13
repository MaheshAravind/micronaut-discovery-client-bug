resource "vault_kv_secret_v2" "exampleApp" {
  mount = "secret"
  name = "exampleApp"
  data_json = jsonencode({
    key = "Reading from the correct secret"
  })
}

resource "vault_kv_secret_v2" "example-app" {
  mount = "secret"
  name = "example-app"
  data_json = jsonencode({
    key = "Oops, reading from the wrong secret"
  })
}