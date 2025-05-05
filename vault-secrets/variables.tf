variable "token" {}

variable "secrets" {
  default = {
    roboshop-dev = {
      description = "RobeShop App Component All secrets"
    }
    roboshop-infra = {
      description = "Roboshop Infra related secrets"
    }
  }
}

variable "values" {
  default = {
    cart = {
      secret = "roboshop-dev"
      value = {
        zip = "zap",
        foo = "bar"
      }
    }

    frontend = {
      secret = "roboshop-dev"
      value = {
        catalogue_url = "http://catalogue-dev.rdevopsb84.online:8080/"
        user_url      = "http://user-dev.rdevopsb84.online:8080/"
        cart_url      = "http://cart-dev.rdevopsb84.online:8080/"
        payment_url   = "http://payment-dev.rdevopsb84.online:8080/"
        shipping_url  = "http://shipping-dev.rdevopsb84.online:8080/"
      }
    }

    ssh = {
      secret = "roboshop-infra"
      value = {
        username = "azuser"
        password = "DevOps@123456"
      }
    }
  }
}

