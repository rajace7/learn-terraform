components = {
  frontend = {
    name          = "frontend"
    instance_type = "t3.micro"
  }
  mongod = {
    name          = "mongod"
    instance_type = "t3.small"
  }
  catalogue = {
    name          = "catalogue"
    instance_type = "t3.micro"
  }
  redis = {
    name          = "redis"
    instance_type = "t3.micro"
  }
}

env = "prod"