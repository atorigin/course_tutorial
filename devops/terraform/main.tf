# GCP 開機器
provider "google" {
  project = "arctic-defender-237709"
  region  = "asia-east1"
  zone    = "asia-east1-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}

output "instance_ip_addr" {
  value = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
  depends_on = [
    google_compute_instance.vm_instance
  ]
}

# AWS 開機器
provider "aws" {
    region = "ap-northeast-1"
}

resource "aws_instance" "aws_vm_instance" {
  ami           = "ami-07200fa04af91f087"
  instance_type = "t3.nano"

  tags = {
    Name = "terraform-instance"
  }
}

output "aws_instance_ip_addr" {
  value = aws_instance.aws_vm_instance.public_ip
  depends_on = [
    aws_instance.aws_vm_instance
  ]
}