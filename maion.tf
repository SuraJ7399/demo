provider "aws" { access_key = "AKIASIP36E5FHIZE7FCB" secret_key = "6VHENbWpo6a8LKAnVwSiORpsO8Es9ut8IzeU59Dq" region = "us-east-1"
}
resource "aws_instance" "example" { ami = "ami-0218d08a1f9dac831" instance_type = "t2.micro"
  
}
