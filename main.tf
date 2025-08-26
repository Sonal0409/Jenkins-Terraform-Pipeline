data "aws_ami" "myami" {

most_recent      = true

owners           = ["amazon"]

 filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }


}


resource "aws_instance" "public_instance" {
 ami           = data.aws_ami.myami.id
 instance_type = var.instance_type

 tags = {
   Name = var.name_tag,
 }
}
