# VPC Endpoints
resource "aws_vpc_endpoint" "eks" {
 vpc_id = "vpc-0b65abf1b0c196894"
  service_name = "com.amazonaws.us-east-1.eks"
   vpc_endpoint_type = "Interface"
   subnet_ids =  flatten(["subnet-0688a7c8ee295a5e5","subnet-07f3018275fbf71e2"])
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]
  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "ec2" {
  vpc_id = "vpc-0b65abf1b0c196894"
  service_name = "com.amazonaws.us-east-1.ec2"
   vpc_endpoint_type = "Interface"
   subnet_ids =  flatten(["subnet-0688a7c8ee295a5e5","subnet-07f3018275fbf71e2"])
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]
  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "ecr_api" {
  vpc_id = "vpc-0b65abf1b0c196894"
  service_name = "com.amazonaws.us-east-1.ecr.api"
   vpc_endpoint_type = "Interface"
   subnet_ids =  flatten(["subnet-0688a7c8ee295a5e5","subnet-07f3018275fbf71e2"])
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]
  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "ecr_dkr" {
 vpc_id = "vpc-0b65abf1b0c196894"
  service_name = "com.amazonaws.us-east-1.ecr.dkr"
   vpc_endpoint_type = "Interface"
   subnet_ids = flatten(["subnet-0688a7c8ee295a5e5","subnet-07f3018275fbf71e2"])
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]
  private_dns_enabled = true
}
 
resource "aws_vpc_endpoint" "sts" {
 vpc_id = "vpc-0b65abf1b0c196894"
  service_name = "com.amazonaws.us-east-1.sts"
   vpc_endpoint_type = "Interface"
   subnet_ids =  flatten(["subnet-0688a7c8ee295a5e5","subnet-07f3018275fbf71e2"])
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]
  private_dns_enabled = true
}
