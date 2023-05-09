restore_banner:
  local.state.apply:
  - tgt: {{data['id']}}
  - args:
    -  mods: states.banner
