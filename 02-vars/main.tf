variable "fruit" {
 name = "apple"

}

variable "fruits" {
 default = [ "apple","banana" ]
}

variable "fruit_price" {
 default = {
        apple=10
        banana=20
 }

}