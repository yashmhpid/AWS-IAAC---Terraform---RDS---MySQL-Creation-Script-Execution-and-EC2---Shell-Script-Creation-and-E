module "my_db" {
    source = "../Modules/RDS"

}

 module "http_server" {
     source = "../Modules/ECT"
    
 }
