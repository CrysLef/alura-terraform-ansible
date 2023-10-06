variable "key_name" {
  type    = string
  default = "alura_key_pair"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "public_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDouc7mOBVyX+pob3++jR9vy9UdcVnse11Q05KMvk1xcGOmmWxHe8zoEPPAeO0QhjJFqVTvGNiLdXegrcazu3V79JFmwUllhUm5kmN4ItMMryAWLUV/8UCpBmkfcc/7exVnhsxcpwEgsDBeC6jnl9EEBAI4rKh0I04c1iPtRQXE1aYssLPv9+m+W6SXSmDSnM1Ccs0PjzDB5PXLLjFPa4jpWLmDZDWPCK84m5KzGc1E//vYgh3RtPRxjGnU+F65Gtd+mxoOftX5mqBkzgB+7AhOFxBWoDiG65cBP+Js/CXgmkW2y+PDH3tPgf1viB4F7YB8Yproeu/wrjUlpwFIDLRTCLQQPQ0G9H8eeDLe2hs7NN6TaOdwE5F4C4Odoc5AsUr1+d6MWRfHn1tMmNIyh6QROC0i7L4sYNPifU17lSMGBntdqgVZgUu+mxNsIQfy+vxnPksMwot1yVEEOhVYlDkuY2onojZaDIve3/pR6G8GVhsJ21ZKKG/+eelMl69MPFcrke9dJni3it9BNJvak9v79P8WDRKqdvB6LT2M1JPlqnIYd0Z2yxxXAi59XqBGFoXCvdwjgpGJi62RsaNj0M1Wf1tb0e53TsoHgMj9m01Tn0Ku3m6aQj9PghQijwP9xjXrs+MlUZ52sRfk0r956jIB1M8V0dFxz2MqWVIm46n2Aw== crystian@crystian-VirtualBox"
}

variable "tag_teste_web" {
  type = map(string)
  default = {
    Name        = "Teste-alura-web"
    Environment = "Teste"
    Stack       = "Javascript"
    Type        = "Containered"
  }
}

variable "tag_teste_golang" {
  type = map(string)
  default = {
    Name        = "Teste-alura-golang"
    Environment = "Teste"
    Stack       = "Golang"
    Type        = "Containered"
  }
}

variable "tag_prod_web" {
  type = map(string)
  default = {
    Name        = "Prod-alura-web"
    Environment = "Prod"
    Stack       = "Javascript"
    Type        = "Containered"
  }
}

variable "tag_prod_golang" {
  type = map(string)
  default = {
    Name        = "Prod-alura-golang"
    Environment = "Prod"
    Stack       = "Golang"
    Type        = "Containered"
  }
}