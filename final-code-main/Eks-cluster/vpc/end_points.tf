# VPC Endpoints
resource "aws_vpc_endpoint" "eks" {
 vpc_id = "vpc-07ab569a1f9113bc5"
  service_name = "com.amazonaws.us-east-1.eks"
   vpc_endpoint_type = "Interface"
   subnet_ids =  flatten(["subnet-0262269978925926f","subnet-057f09ed1629d32ca"])
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]
  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "ec2" {
  vpc_id = "vpc-07ab569a1f9113bc5"
  service_name = "com.amazonaws.us-east-1.ec2"
   vpc_endpoint_type = "Interface"
   subnet_ids =  flatten(["subnet-0262269978925926f","subnet-057f09ed1629d32ca"])
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]
  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "ecr_api" {
  vpc_id = "vpc-07ab569a1f9113bc5"
  service_name = "com.amazonaws.us-east-1.ecr.api"
   vpc_endpoint_type = "Interface"
   subnet_ids =  flatten(["subnet-0262269978925926f","subnet-057f09ed1629d32ca"])
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]
  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "ecr_dkr" {
 vpc_id = "vpc-07ab569a1f9113bc5"
  service_name = "com.amazonaws.us-east-1.ecr.dkr"
   vpc_endpoint_type = "Interface"
   subnet_ids = flatten(["subnet-0262269978925926f","subnet-057f09ed1629d32ca"])
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]
  private_dns_enabled = true
}
 
resource "aws_vpc_endpoint" "sts" {
 vpc_id = " vpc-07ab569a1f9113bc5"
  service_name = "com.amazonaws.us-east-1.sts"
   vpc_endpoint_type = "Interface"
   subnet_ids =  flatten(["subnet-0262269978925926f","subnet-057f09ed1629d32ca"])
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]
  private_dns_enabled = true
}
