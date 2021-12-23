module "aws-infra" {
    source = "../infra"
    instancia = "t2.micro"
    regiao_aws = "us-west-2"
    chave = "iac_mac"
    ami = "ami-0688ba7eeeeefe3cd"
}

output "IP" {
    value = module.aws-infra.IPpublico
}