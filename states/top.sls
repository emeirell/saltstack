base:
  '*':
    - top_empty
  'kernel:Linux':
    - match: grain
    - adm.allow_ssh
    - adm.disable_firewall
