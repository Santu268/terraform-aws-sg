locals{
    common_name = "${var.project}-${var.env}"
    common_tags= {
        Project = var.project
        Env = var.env
        Terraform = "true"
    }
}