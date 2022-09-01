base:
  '*':
    - states.empty
  'kernel:Linux':
    - match: grain
    - states.banner
