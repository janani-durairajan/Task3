resource "aws_instance" "monitor_node" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI
  instance_type = var.instance_type

  tags = {
    Name = "PrometheusNode"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y docker
              service docker start
              docker run -d -p 9100:9100 --name node_exporter quay.io/prometheus/node-exporter
              EOF
}

resource "aws_s3_bucket" "monitoring_bucket" {
  bucket = var.bucket_name
}
