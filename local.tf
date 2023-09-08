# Resource = bloco
# Local = Provider
# File = tipo do provider
# Exemplo = nome do recurso
# https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
# comandos
# 1- terraform init
# 2- terraform plan
# 3- terraform apply
resource "local_file" "exemplo" {
    filename = "exemplo.txt"
    content = var.conteudo
}

# Está pegando o conteúdo do arquivo .tfvars
variable "conteudo" {}

# Trabalhando com output
# Nesse caso irá imprimir o id gerado após o apply
output "id-do-arquivo" {
  value = resource.local_file.exemplo.id
}