# Monitoring Stack
Данный репозиторий содержит values и ссылки на Helm чарты для поднятия мониторинга.

- Prometheus
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/prometheus -f promvalues.yaml -n monitoring --create-namespace
```
https://prometheus.momo.dtc.tatar/

- Grafana
```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm install grafana grafana/grafana -f grafanavalues.yaml -n monitoring --create-namespace
```
https://grafana.momo.dtc.tatar/

- Loki
```bash
helm install loki-distributed  grafana/loki-distributed -f loki.yaml -n monitoring
helm install promtail grafana/promtail -f promtail.yaml -n monitoring
```