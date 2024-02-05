locals {
  games = {
    palworld = {
      name      = "palworld"
      vm_size   = "t3a.large"
      disk_size = "10"
      ports = [
        {
          index = "1" # This is required as a unique key to use in the for_each loop
          start_port = "8211"
          end_port   = "8211"
          protocol = "UDP"
        }
      ]
    },
    enshrouded = {
      name      = "enshrouded"
      vm_size   = "t3a.large"
      disk_size = "40"
      ports = [
        {
          index      = "1" # This is required as a unique key to use in the for_each loop
          start_port = "15636"
          end_port   = "15637"
          protocol = "UDP"
        },
        {
          index      = "2" # This is required as a unique key to use in the for_each loop
          start_port = "15636"
          end_port   = "15637"
          protocol = "TCP"
        }
      ]       
    }
  }
}