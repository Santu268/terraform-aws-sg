resource "aws_ssm_parameter" "sg_id" {
  count = length(var.sg_names)  
  name  = "/${var.project}/${var.env}/${var.sg_names[count.index]}_sg_id"
  type  = "String"
  value = aws_security_group.main[count.index].id
}