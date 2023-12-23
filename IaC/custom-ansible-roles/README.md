# Ansible Roles для Yandex Diploma Kubernetes Cluster

#### Base Role
Базовая настройка для жизнедеятельности кластера

Состоит из:
- Установка Python Ansible зависимостей
- Установка Helm
- Создание ImagePullSecrets Gitlab
- Добавление Helm репозитория CertManager
- Деплой CertManager и создание ClusterIssuer
- Деплой Ingress Nginx Controller с доп. настройками

#### Запуск
1. В group_vars изменить данные если необходимо
2. В файле `1credentials.yaml` указать креды, скопировать его в `credentials.yaml`
3. Запустить командой
```bash
ansible-playbook playbook.yaml -i inventory/vms.yaml -e @credentials.yaml
```
> Для Ingress контроллера нужно сделать label VM, где он будет располагаться.
`kubectl label node kub-worker2 controller=nginx`