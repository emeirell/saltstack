banner_of_the_day:
  file.managed:
    - name: /etc/motd
    - source: salt://config/motd
    - user: root
    - group: root
    - mode: 644
