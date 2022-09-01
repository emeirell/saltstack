restart_service:
  local.service.start:
  - tgt: {{data['id']}}
  - args:
    -  name: {{data['service_name']}}
