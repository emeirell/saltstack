restart service:
  local.cmd.run:
    - tgt: {{ data['id'] }}
    - arg:
      - service {{ data['service_name'] }} start
