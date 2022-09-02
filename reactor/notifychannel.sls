restart_service:
  local.slack.call_hook:
  - tgt: saltmaster
  - args:
    - identifier: 'your_webhook_goes_here'
    -  message: Apparently someone ({{data['user']}}) is trying to guess your password at {{data['id']}}. Sincelerey your SaltMaster
