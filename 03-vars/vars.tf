variable "sample"{
  default = 100
}

variable "sample1" {
  default ="hello world"
}
output "sample"{
  value = var.sample
}

output "sample1"{
  value = var.sample1
}

## sometime if variable/any reference with the combination of some other string then we have to access those in ${}

output "sample-ext"{
  value = "value of sample - ${var.sample} - ${var.sample1}"
}

#variable data types
#1.string
#2.number
#3.boolean

#variable types
#in ansible - 1 plain key, value, 2. list, 3.map/dict

#in terraform
#1. plain
#2. list
#3. map

variable "course"{
  default ="devops training"
}

#list
variable "courses"{
  default = [
    "Devops",
    "aws",
    "python"
  ]
}

##map
variable "course_details"{
  default = {
    devops = {
      name = "devops"
      timing = "10am"
      duration = 90
    }
    AWS = {
      name = "AWS"
      timing = "11am"
      duration = 30
    }
  }
}

output "course"{
  value = var.course
}
output "courses" {
  value = var.courses[2]
}
output "course_details" {
  value = var.course_details["devops"]
}
