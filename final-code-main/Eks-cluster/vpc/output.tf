output control_plane_sg_security_group_id {
  value = aws_security_group.control_plane_sg.id
}

output data_plane_sg_security_group_id {
  value = aws_security_group.data_plane_sg.id
}
