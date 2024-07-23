# defining the varialbe
variable username {
    type = string
    }
    
# using the variable 
output firstline {
    value = "hello ${var.username}, how are your ? "
    }


