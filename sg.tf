 resource "aws_security_group" "sg" {
  name_prefix        = "${var.project_name}-${var.environment}-"
  description = "Security group dedicated to ${var.project_name}-${var.environment}"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  lifecycle {
    create_before_destroy = true
  }
}
