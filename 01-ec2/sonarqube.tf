resource "aws_instance" "web" {
  ami           = "ami-00c4b877294e28e09"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09c918b8c00442b89"]
  iam_instance_profile  = "EC2-RO-ROLE"
  key_name              = "devops"

  tags = {
    Name = "sonarqube"
  }
}

resource "local_file" "sample" {
    content     = "www.goole.com"
    filename = "/tmp/rishi"
}