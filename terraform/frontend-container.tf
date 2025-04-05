resource "docker_image" "frontend_image" {
  name = "frontend-image"
  build {
    context = "../Front-end/Spelling Bee"
  }
}

resource "docker_container" "frontend_container" {
  name  = "frontend"
  image = docker_image.frontend_image.name

  ports {
    internal = 80
    external = 3000
  }

  restart = "always"

  networks_advanced {
    name = docker_network.app_network.name
  }
}
