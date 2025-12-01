##Main sg variables
variable "sumens-ingress-rule" {
  description = "ingress rule objects"
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_block  = list(string)
  }))
  default = [{
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_block  = ["0.0.0.0/0"]
    },
    {
      description = "http"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_block  = ["0.0.0.0/0"]
    },
    {
      description = "https"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_block  = ["0.0.0.0/0"]
    }
  ]
}

variable "sumens-egress-rule" {
  description = "egress rule objects"
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_block  = list(string)
  }))
  default = [{
    description = "all traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_block  = ["0.0.0.0/0"]
  }]
}