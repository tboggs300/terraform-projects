resource "aws_instance" "example" {
  ami = "ami-a1b2c3d4"
  instance_type = "t2.micro"
}

data "aws_ami" "exammple_data" {
    most_recent = true

    owners = ["self"]
    tags = {
        Name = "app-example"
        Tested = "true"
    }
}