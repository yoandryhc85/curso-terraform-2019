resource "aws_eip" "eip" {
   instance = "${aws_instance.web.id}"
   vpc      = true
   tags = {
     Name = "${var.project_name}-${var.environment}"
   }
}
