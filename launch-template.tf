resource "aws_launch_template" "web_lt" {
  name          = "web-launch-template"
  image_id      = var.ami_id
  instance_type = var.instance_type

  network_interfaces {
    associate_public_ip_address = true
    security_groups            = [aws_security_group.my_security_group.id]
  }


user_data = base64encode(<<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y apache2  
    systemctl start apache2
    systemctl enable apache2    
    echo "<h1>Welcome to terraform ASG demo</h1>" | sudo tee /var/www/html/index.html
  EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "web-launch-template-instance"
    }
  }
}