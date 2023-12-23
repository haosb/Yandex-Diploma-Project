# Terraform
Данные модули позволят развернуть в облаке необходимые виртуальные машины для кластера Kubernetes и сохранят состояние в бакет.

#### Requirements
1. Terraform
2. В домашней папке создать .terraformrc и указать репозитории Яндекса
3. В terraform.tfvars указать:
    - zone                 
    - cloud_id             
    - image_id             
    - folder_id            
    - AWS_ACCESS_KEY_ID    
    - AWS_SECRET_ACCESS_KEY
4. Yandex CLI (YC)
5. Сделать `export YC_TOKEN=$(yc iam create-token)`
