# Start a container
resource "docker_container" "ubuntu" {
  name  = "api-localhost"
  image = "lab/api"

  port{
    internal = "80"
    external = "4001"
  }
  
}
