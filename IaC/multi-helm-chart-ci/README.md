# Multi Helm Chart и Gitlab Template
Создан helm chart, позволяющий на основе `values.yaml` деплоить приложение любой сложности:
1. Поддерживает деплой доп. контейнера воркера
2. Поддерживает авто-создание Ingress записи на основе наличия переменной CI_URL из variables Gitlab.
3. Поддерживает создание сервиса при указании порта.

Из `Kubernetes.gitlab-ci.yml` был создан Gitlab template, который используется в репозиториях с приложениями.
`.gitlab-ci.yml` используется при обновлении версии чарта, а также дополнении чарта, пушит в Nexus.


#### Деплой приложений
1. Для деплоя в репозитории приложения должен лежать `values.yaml` из текущего репозитория с измененными настройками.
2. А так же имеется `.gitlab-ci.yml` содержащий в себе:
```yaml
include:
  - project: 'aidep/iac/newpipeline'
    ref: master
    file: 'Kubernetes.gitlab-ci.yml'

stages:
  - build
  - deploy
```
3. При необходимости в начале `.gitlab-ci.yml` указать variables:
```yaml
variables:
  RUNNER_TAG: k8s
  CI_NAMESPACE: momo-store # NAMESPACE в который происходит деплой
  CI_URL: "" # URL для доступа к приложению, если не указывать, то не создаст Ingress
  GITLAB_VARIABLES: "" # Название созданных Gitlab Variables, чтобы не передавать в открытом виде, разделитель ..
                       # Например POSTGRES_URL..JWT_TOKEN
```