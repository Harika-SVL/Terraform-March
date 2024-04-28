resource "aws_instance" "apache" {
  ami                         = "ami-04b70fa74e45c3917" #todo:  replace this with data source
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "PubKey" #todo:  replace this with data source
  subnet_id                   = data.aws_subnet.first.id
  user_data                   = file("apache.sh")
  vpc_security_group_ids      = ["sg-0703b409c551af6fb"]

  connection {
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    type        = "ssh"
  }
  provisioner "remote-exec" {
    inline = ["sudo apt update", "sudo apt install apache2 -y"]
  }
}