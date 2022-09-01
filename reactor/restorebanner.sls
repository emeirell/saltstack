restore_banner:
  local.state.apply:
  - tgt: {{data['id']}}
  - args:
    -  states.banner.sls
