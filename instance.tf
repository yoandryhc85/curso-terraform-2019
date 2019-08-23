resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = [
  "${aws_security_group.sg.id}"
]

  key_name = "${var.key_name}"
  tags = {
    Name = "${var.project_name}-${var.environment}"
  }
}
