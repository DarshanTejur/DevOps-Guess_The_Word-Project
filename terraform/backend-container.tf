resource "docker_image" "backend_image" {
  name = "backend-image"
  build {
    context = "../Back-end"
  }
}

resource "docker_container" "backend_container" {
  name  = "backend"
  image = docker_image.backend_image.name

  ports {
    internal = 5000
    external = 5000
  }

  restart = "always"

  networks_advanced {
    name = docker_network.app_network.name
  }
}
