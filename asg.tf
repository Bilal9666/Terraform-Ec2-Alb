resource "aws_autoscaling_group" "web_as" {
    name = "web-asg"
    min_size = 2
    max_size = 4
    desired_capacity = 2
    vpc_zone_identifier = var.public_subnet
    target_group_arns = [ aws_lb_target_group.web_tg.arn ]
    health_check_type = "EC2"
    health_check_grace_period = 300
    launch_template {
        id = aws_launch_template.web_lt.id
        version = "$Latest"
    }

    tag {
        key = "Name"
        value = "web-asg-instance"
        propagate_at_launch = true
    }

    lifecycle {
        create_before_destroy = true
    }
}