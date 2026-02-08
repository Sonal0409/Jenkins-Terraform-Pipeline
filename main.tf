data "aws_ami" "myami" {

most_recent      = true

owners           = ["amazon"]

 filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }


}


resource "aws_instance" "public_instance" {
 ami           = "ami-0c398cb65a93047f2"
 instance_type = "t3.micro"

 tags = {
   Name = var.name_tag,
 }
}
