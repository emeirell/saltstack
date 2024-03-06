reload_sshd:
  service.running:
{%- if salt['grains.item']('os_family')['os_family'] == 'Debian' %}
    - name: ssh
    - reload: True
{%- else %}
    - name: sshd
    - reload: True
{%- endif %}
