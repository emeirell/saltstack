{%- if salt['pkg.version']('openssh-server') %}

include:
  - adm.reload_ssh_svc

sshd_config_enable_root_login:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: (?i)^\s*\bPermitRootLogin\b.*$
    - repl: PermitRootLogin yes
    - append_if_not_found: True
    - watch_in:
      - service: reload_sshd

sshd_config_enable_password_login:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: (?i)^\s*\bPasswordAuthentication\b.*$
    - repl: PasswordAuthentication yes
    - append_if_not_found: True
    - watch_in:
      - service: reload_sshd_svc

{%- else %}

sshd_config_disabled_root_login_not_installed:
  locke.notify:
    - status: notapplicable
    - text: openssh-server package not installed

{%- endif %}
