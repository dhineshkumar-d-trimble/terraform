region          = "ap-south-1"
vpc_cidr        = "10.0.0.0/16"
vpc_name        = "ec2-vpc"
subnet_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"]
sg_name         = "sg_"
ingress_from_port = 22
ingress_to_port   = 22
ingress_protocol  = "tcp"
ingress_cidr_blocks = ["0.0.0.0/0"]
ami             = "ami-00bb6a80f01f03502"
instance_type   = "t2.micro"
instance_name   = "ec2_terraform"
bucket_name     = "bucket-demoabc-yo1o1o"
backend_bucket  = "terraformm-remote-backend"
backend_key     = "terraform/state"
backend_region  = "ap-south-1"
