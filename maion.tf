provider "aws" {
  region     = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0218d08a1f9dac831"
  instance_type = "t2.micro"
}
resource "aws_autoscaling_attachment" "asg_attachment_bar" {
  autoscaling_group_name = aws_autoscaling_group.asg.id
  elb                    = aws_elb.bar.id
}
resource "aws_autoscaling_attachment" "asg_attachment_bar" {
  autoscaling_group_name = aws_autoscaling_group.asg.id
  alb_target_group_arn   = aws_lb_target_group.test.arn
}
