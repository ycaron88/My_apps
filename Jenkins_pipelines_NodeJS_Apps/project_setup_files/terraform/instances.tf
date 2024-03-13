resource "aws_instance" "nodejs-apps-server" {
  ami                    = data.aws_ami.ubuntu.id # Ubuntu server 22.04
  instance_type          = "t2.micro" # Do not forget to turn off the instance after the test is complete ( around $30 monthly)
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  key_name               = "connect_me_to_aws"
  tags = {
    Name = "Node_JS_app"
  }
}