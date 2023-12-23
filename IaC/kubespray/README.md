# KubeSpray для Yandex Diploma кластера

#### Создание кластера
1. Добавить IP в файл `inventory/mycluster/inventory.ini`
2. Поменять конфигурационные файлы, версию K8s и т.д если необходимо `inventory/mycluster/group_vars/*`
3. Проверить в `ansible.cfg` remote_user
4. CD в эту папку с Kubespray и запуск:
```bash
ansible-playbook -i inventory/mycluster/inventory.ini  --become --become-user=root cluster.yml
```

#### Предустановленный конфиг
Данный конфиг установит:
1. Kube 1.26.2
2. Helm v3
3. Containerd as CRI
4. Cillum as CNI
5. DNS mode - coredns, отключен nodelocaldns