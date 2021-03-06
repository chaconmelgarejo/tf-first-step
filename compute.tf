# Create a new instance
resource "google_compute_instance" "my-vm" {
   name = "ubuntu-test"
   machine_type = "f1-micro"
   zone = "us-central1-a"
   boot_disk {
      initialize_params {
      image = "ubuntu-1604-lts"
   }
}
network_interface {
   network = "default"
   access_config {}
}
service_account {
   scopes = ["userinfo-email", "compute-ro", "storage-ro"]
   }
}
