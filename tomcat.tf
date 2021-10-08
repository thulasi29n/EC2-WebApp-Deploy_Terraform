resource "aws_instance" "Project_Web" {
    ami ="ami-0747bdcabd34c712a"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name="Thulasi_AWS_Key_Pair"

       tags = {
          Name="Project_WebServer"
        } 
    security_groups = ["${aws_security_group.WebServer_SG.name}"]
    user_data = file("./script.sh")
                
}
