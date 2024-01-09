#create our rds DB using terraform
provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_db_instance" "myrds"{
    db_name = "mydb"
    instance_class = "db.t3.micro"
    engine = "mysql"
    engine_version = "8.0.27"
    allocated_storage = 20
    storage_type = "gp2"
    identifier = "mydb"
    username = "admin"
    password = "password!123"
    publicly_accessible = true  
    skip_final_snapshot = true

    tags = {
      Name = "My-rds-db"
    }

}
