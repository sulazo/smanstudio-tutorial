# # allocate elastic ip. this eip will be used for the nat-gateway in the public subnet az1 
# # terraform aws allocate elastic ip
# resource "aws_eip" "eip_for_nat_gateway_az1" {
#   vpc    = 

#   tags   = {
#     Name = 
#   }
# }

# # allocate elastic ip. this eip will be used for the nat-gateway in the public subnet az2
# # terraform aws allocate elastic ip
# resource "aws_eip" "eip_for_nat_gateway_az2" {
#   vpc    = 

#   tags   = {
#     Name = 
#   }
# }

# # create nat gateway in public subnet az1
# # terraform create aws nat gateway
# resource "aws_nat_gateway" "nat_gateway_az1" {
#   allocation_id = 
#   subnet_id     = 

#   tags   = {
#     Name = 
#   }

#   # to ensure proper ordering, it is recommended to add an explicit dependency
#   # on the internet gateway for the vpc.
#   depends_on = 
# }

# # create nat gateway in public subnet az2
# # terraform create aws nat gateway
# resource "aws_nat_gateway" "nat_gateway_az2" {
#   allocation_id = 
#   subnet_id     = 

#   tags   = {
#     Name = 
#   }

#   # to ensure proper ordering, it is recommended to add an explicit dependency
#   # on the internet gateway for the vpc.
#   depends_on = 
# }

# # create private route table az1 and add route through nat gateway az1
# # terraform aws create route table
# resource "aws_route_table" "private_route_table_az1" {
#   vpc_id            = 

#   route {
#     cidr_block      = 
#     nat_gateway_id  = 
#   }

#   tags   = {
#     Name = 
#   }
# }

# # associate private app subnet az1 with private route table az1
# # terraform aws associate subnet with route table
# resource "aws_route_table_association" "private_app_subnet_az1_route_table_az1_association" {
#   subnet_id         = 
#   route_table_id    = 
# }

# # associate private data subnet az1 with private route table az1
# # terraform aws associate subnet with route table
# resource "aws_route_table_association" "private_data_subnet_az1_route_table_az1_association" {
#   subnet_id         = 
#   route_table_id    = 
# }

# # create private route table az2 and add route through nat gateway az2
# # terraform aws create route table
# resource "aws_route_table" "private_route_table_az2" {
#   vpc_id            = aws_vpc.vpc.id

#   route {
#     cidr_block      = 
#     nat_gateway_id  = 
#   }

#   tags   = {
#     Name = 
#   }
# }

# # associate private app subnet az2 with private route table az2
# # terraform aws associate subnet with route table
# resource "aws_route_table_association" "private_app_subnet_az2_route_table_az2_association" {
#   subnet_id         = 
#   route_table_id    = 
# }

# # associate private data subnet az2 with private route table az2
# # terraform aws associate subnet with route table
# resource "aws_route_table_association" "private_data_subnet_az2_route_table_az2_association" {
#   subnet_id         = 
#   route_table_id    = 
# }



###########################################################################
#FROM openai


# Create routes to the NAT Gateways in each private route table
# resource "aws_route" "private_a" {
#   route_table_id         = aws_route_table.private_a.id
#   destination_cidr_block = "0.0.0.0/0"
#   nat_gateway_id         = aws_nat_gateway.nat_a.id
# }

# resource "aws_route" "private_b" {
#   route_table_id         = aws_route_table.private_b.id
#   destination_cidr_block = "0.0.0.0/0"
#   nat_gateway_id         = aws_nat_gateway.nat_b.id
# }

# # Associate the private route tables with the private subnets
# resource "aws_route_table_association" "private_a" {
#   subnet_id      = aws_subnet.subnet_a.id
#   route_table_id = aws_route_table.private_a.id
# }

# resource "aws_route_table_association" "private_b" {
#   subnet_id      = aws_subnet.subnet_b.id
#   route_table_id = aws_route_table.private_b.id