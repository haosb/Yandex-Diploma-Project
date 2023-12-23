resource "yandex_compute_instance" "vm-1" {
    name = "${var.vm_name}-${count.index}"
    zone = var.compute_instance_zone
    count = var.compute_instance_count
    platform_id = var.compute_instance_platform_id

    # Конфигурация ресурсов:
    # количество процессоров и оперативной памяти
    resources {
        cores  = var.compute_instance_cores
        memory = var.compute_instance_ram
    }

    # Загрузочный диск:
    # здесь указывается образ операционной системы
    # для новой виртуальной машины
    boot_disk {
        initialize_params {
            image_id = var.image_id
            size = var.compute_instance_disk_size
        }
    }

    # Сетевой интерфейс:
    # нужно указать идентификатор подсети, к которой будет подключена ВМ
    network_interface {
        subnet_id = var.subnet_id
        nat       = var.compute_instance_nat
    }

    scheduling_policy {
        preemptible = var.compute_instance_scheduling
    }
    
    # Метаданные машины:
    # здесь можно указать скрипт, который запустится при создании ВМ
    # или список SSH-ключей для доступа на ВМ
    metadata = {
        user-data = "${file("startup.sh")}"
    }
}