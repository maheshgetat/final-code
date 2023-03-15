resource "aws_security_group" "eks_cluster" {
  name        = var.cluster_sg_name
  description = "Cluster communication with worker nodes"
  vpc_id = "vpc-07ab569a1f9113bc5"

  tags = {
    Name = var.cluster_sg_name
  }
}

resource "aws_security_group_rule" "cluster_inbound" {
  description              = "Allow worker nodes to communicate with the cluster API Server"
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.eks_cluster.id
  source_security_group_id = aws_security_group.eks_nodes.id
  to_port                  = 443
  type                     = "ingress"
}
resource "aws_security_group_rule" "bastion_inbound1" {
  security_group_id = aws_security_group.eks_cluster.id
  type              = "ingress"
  from_port   = 443
  to_port     = 443
  protocol    = "tcp"
  cidr_blocks = ["10.127.32.0/19"]
}

resource "aws_security_group_rule" "cluster_outbound" {
  description              = "Allow cluster API Server to communicate with the worker nodes"
  from_port                = 1024
  protocol                 = "tcp"
  security_group_id        = aws_security_group.eks_cluster.id
  source_security_group_id = aws_security_group.eks_nodes.id
  to_port                  = 65535
  type                     = "egress"
}