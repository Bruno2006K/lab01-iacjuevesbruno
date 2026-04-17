resource "docker_container" "bd" {
  name  = "bd-${terraform.workspace}"
  image = "postgres:alpine"
  
  env = [ "POSTGRES_PASSWORD=password123" ]

  ports {
    internal = 5432
    external = var.bd_port[terraform.workspace]
  }
}