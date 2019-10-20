resource "aws_instance" "web" {
  ami           = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09c918b8c00442b89"]
  iam_instance_profile  = "fulladmin"
  key_name              = "RishiNVerginia"

  tags = {
    Name = "sonarqube"
  }
}

resource "local_file" "sample" {
    content     = "www.goole.com"
    filename = "/tmp/rishi"
    depends_on = ["aws_instance.web"]
}