reload_httpd:
  service.running:
{%- if salt['grains.item']('os_family')['os_family'] == 'Debian' %}
    - name: httpd
    - reload: True
{%- else %}
    - name: httpd
    - reload: True
{%- endif %}
