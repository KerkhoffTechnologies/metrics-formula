{% from "metrics/map.jinja" import grafana with context %}

Ensure {{ grains.service_name }} grafana dashboard is managed:
  grafana.dashboard_present:
    - name: {{ grains.service_name }}
    - dashboard_from_pillar: 'grafana_dashboards:default'
    - rows_from_pillar:
      - 'grafana_rows:service'
      - 'grafana_rows:systemhealth'
