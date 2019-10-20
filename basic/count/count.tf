resource "aws_instance" "web" {
  count = 2 
  ami           = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09c918b8c00442b89"]
  iam_instance_profile  = "fulladmin"
  key_name              = "RishiNVerginia"


  tags = {
    Name = "Server ${count.index+1}"
}

  lifecycle {
    create_before_destroy = true
  }


}