variable "example_0" {
    type = string
    default = "foo" 
}

// By not including the 'default' argument in this variable,
// this variable would be a 'required' variable if used in a module.
// You will learn more about modules in lesson-04-making-modules.

variable "example_1" {
    type = number
}