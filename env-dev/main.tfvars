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
  user = {
    name          = "user"
    instance_type = "t3.micro"
  }
  cart = {
    name          = "cart"
    instance_type = "t3.micro"
  }
  mysql = {
    name          = "mysql"
    instance_type = "t3.micro"
    password      = "RoboShop@1"
  }
  shipping = {
    name          = "shipping"
    instance_type = "t3.micro"
    password      = "RoboShop@1"
  }
  rabbitmq = {
    name          = "rabbimq"
    instance_type = "t3.micro"
    password      = "roboshop123"
  }
  payment = {
    name          = "payment"
    instance_type = "t3.micro"
    password      = "roboshop123"
  }
}


env = "dev"