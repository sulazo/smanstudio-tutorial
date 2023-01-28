variable "vpc_cidrblock" {
  default = "10.0.0.0/16"

}
variable "public_subnetz1_cidr" {
  default = "10.0.0.0/24"

}
variable "public_subnetz2_cidr" {
  default = "10.0.1.0/24"

}



# variable "av_zones" {
#     type=map
#   zones ={
#     az1 =""
#     az2=""
#     az3=""
#   }
# }