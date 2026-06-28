resource "aws_security_group" "main" {
  count = length(var.sg_names)  
  name        = replace("${local.common_name}-${var.sg_names[count.index]}-sg","_","-")
  description = "Allow ${var.project} project ${var.env} traffic for ${var.sg_names[count.index]}"
  vpc_id      = var.vpc_id
  egress {
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
}
  tags = merge(
    local.common_tags,
    {
        Name = "${var.common_name}-${var.sg_names[count.index]}-sg"
    }
  )
}