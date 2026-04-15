resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.linux_key

  tags = {
    Name        = "terraform-${var.env}-instance"
    Environment = var.env
  }
}