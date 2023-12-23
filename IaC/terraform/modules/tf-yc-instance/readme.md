#### Для чего
Данный модуль позволяет развернуть ВМ в Yandex Cloud и добавить ssh-ключ, который задается в папке с модулем в startup.sh (cloud-init)

#### Provider
Yandex.Cloud = ">= 0.87.0"

#### Inputs
variable "compute_instance_name" (string):
- The name of the compute instance. Default value is "chapter5-lesson2-std-016-20".

variable "compute_instance_zone" (string):
- The zone of the compute instance. Default value is "ru-central1-a".

variable "compute_instance_platform_id" (string):
- The platform ID of the compute instance. Default value is "standard-v1".

variable "compute_instance_scheduling" (bool):
- Indicates whether the compute instance should be scheduled for maintenance. Default value is true.

variable "compute_instance_cores" (number):
- The number of cores for the compute instance. Default value is 2.

variable "compute_instance_ram" (number):
- The amount of RAM for the compute instance in GB. Default value is 2.

variable "compute_instance_disk_size" (number):
- The size of the disk for the compute instance. Default value is 20.

variable "compute_instance_disk_image_id" (string):
- The ID of the disk image to use for the compute instance. Default value is "fd80qm01ah03dkqb14lc".

variable "compute_instance_subnet_id" (string):
- The ID of the subnet where the compute instance will be deployed. Default value is "e9b8ilpp3vu2398rtrpl".

variable "compute_instance_nat" (bool):
- The NAT configuration for the compute instance. Default value is true.

#### Outputs
Публичный ip-адрес машины.


