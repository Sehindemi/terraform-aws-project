#----- networking/main.tf

resource "random_interger" "random" {
    min = 1
    max = 100
}

resource "aws_vpc" "demi_tech" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    enable_dns_support = true
    
    tags = {
        Name = "demi_tech-${random_interger.random.id}"
    }
}