provider "aws" {
  region = "us-east-1"
  version = "~> 2.46"
  
}
# resource "aws_vpc" "mainvpc" {

#   cidr_block = "10.1.0.0/16"
  
# }

# resource "aws_default_security_group" "default" {

#     vpc_id = "${aws_vpc.mainvpc.id}"

#     ingress {
#         from_port = 0
#         to_port = 0
#         protocol = -1
#         self = true
        
#     }

#     egress {
#         from_port = 0
#         to_port = 0
#         protocol = "-1"
#         cidr_blocks =["0.0.0.0/0"]

#     }

# }


resource "aws_db_instance" "default" {
    allocated_storage    = 20
    storage_type         = "gp2"
    engine               = "mysql"
    engine_version       = "5.7"
    instance_class       = "db.t2.micro"
    name                 = "mydb"
    username             = "foo"
    password             = "foobarbaz"
    parameter_group_name = "default.mysql5.7"
    iam_database_authentication_enabled = true
    publicly_accessible = true

    
    
    provisioner "local-exec" {
      
      command = "C:/Users/Administrator/Downloads/mysql-8.0.20-winx64/mysql-8.0.20-winx64/bin/mysql.exe --host=${self.address} --port=3306 --user=${self.username} --password=${self.password} < file.sql"
    }
    
}

# provider "mysql" {
#     endpoint = "${aws_db_instance.default.endpoint}"
#     username = "${aws_db_instance.default.username}"
#     password = "foobarbaz"
# }

# resource "mysql_database" "mydb" {
#     depends_on = ["aws_db_instance.default"]
#     name = "mydb"
#     provisioner "local-exec" {
#       command = "C:/Users/Administrator/Downloads/mysql-8.0.20-winx64/mysql-8.0.20-winx64/bin/mysql.exe --host=${aws_db_instance.default.address} --user=${aws_db_instance.default.username} --password=foobarbaz --protocol=TCP --database=${self.name} < file.sql"
#     }
# }
