variable "project" {
  type        = string
}

variable "env" {
  type        = string
}

variable "vpc_id" {
  type        = string
}

variable "sg_tags"{
    type = map
    default= {}
}

variable "sg_names"{
    type = list
    default = [mongodb,redis,rabbitmq,mysql,catalogue,cart,user,payment,shipping,frontend,backend_alb,frontend_alb,bastion]
}