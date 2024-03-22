# ---- networking/output.tf

output "vpc_id" {
    value = aws_vpc.demi_tech.id
}