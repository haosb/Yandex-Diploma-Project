# Дипломный проект курса DevOps для эксплуатации и разработки - Yandex Practicum
Делюсь своей реализацией дипломного проекта. Дата на момент завершения 20.12.2023.

#### Требования к диплому
- Код хранится в GitLab с использованием любого git-flow
- В проекте присутствует .gitlab-ci.yml, в котором описаны шаги сборки
- Артефакты сборки (docker-образы или др.) публикуются в систему хранения (Nexus или аналоги)
- Артефакты сборки версионируются
- Написаны Dockerfile'ы для сборки Docker-образов бэкенда и фронтенда
- Бэкенд: бинарный файл Go в Docker-образе
- Фронтенд: HTML-страница раздаётся с Nginx
- В GitLab CI описан шаг сборки и публикации артефактов
- В GitLab CI описан шаг тестирования
- В GitLab CI описан шаг деплоя
- Развёрнут Kubernetes-кластер в облаке
- Kubernetes-кластер описан в виде кода, и код хранится в репозитории GitLab
- Конфигурация всех необходимых ресурсов описана согласно IaC
- Состояние Terraform'а хранится в S3
- Картинки, которые использует сайт хранятся в S3
- Секреты не хранятся в открытом виде
- Написаны Kubernetes-манифесты для публикации приложения
- Написан Helm-чарт для публикации приложения
- Helm-чарты публикуются и версионируются в Nexus
- Приложение подключено к системам логирования и мониторинга
- Есть дашборд, в котором можно посмотреть логи и состояние приложения

#### Структура важных файлов репозитория
В каждой группе в репозиториях (тут это папка), кроме репозитория приложений есть `README.md` файл, в нем описан мануал по назначению репозитория и его применению.
```
.
├── Application                     # Группа репозиториев приложения
│   ├── backend
│   └── frontend
├── IaC
│   ├── custom-ansible-roles        # Кастомные роли для установки в кластер K8s
│   ├── kubespray                   # Kubespray Ansible роли с наиболее удобным кластером
│   ├── monitoring-stack            # Мониторинг для инфраструктуры и приложения
│   ├── multi-helm-chart-ci         # Кастомный helm чарт для легкого деплоя приложений в K8s
│   └── terraform                   # Terraform модули для поднятия виртуалок кластера
└── README.md
```