variable "amiid" {
  description = "AMI ID"
  type = string
  default = "ami-0742b4e673072066f"
}

variable "inst_count" {
  description = "Instance Count"
  type = number
  default = 2
}

variable "tag" {
  default = ["EBI Instance Count 1","EBI Instance Count 2"]
  
}