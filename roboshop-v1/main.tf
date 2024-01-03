module "frontend"{
  source = "./ec2"
  name = "frontend"
}

variable "instances"  {
        default = {
          frontend ={}
          mongodb ={}
          catalogue ={}
          redis ={}
          user ={}
          cart ={}
          mysql ={}
          shipping ={}
          rabbitmq ={}
          payment ={}

}
}