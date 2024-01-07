provider "aws" {
  region = "ap-northeast-1"
}

module "ec2"{
    source = "./ec2-module"
    instance_type = "t2.micro"
    key-id = "to-do-key"
    ami_id = "ami-012261b9035f8f938"
    availability_zone = "ap-northeast-1a"
    user-data = "user-data.sh"

}
output "public_ip_ec2"{
    value = module.ec2.public_ip
}
output "public_dns_ec2"{
    value = module.ec2.public_dns
}