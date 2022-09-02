install_httpd:
  pkg.installed:
    - pkgs:
      - httpd

index_file:
  file.managed:
    - name: /var/www/html/index.html
    - source: salt://config/index.html
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: install_httpd

logo_file:
  file.managed:
    - name: /var/www/html/cna.jpg
    - source: salt://config/cna.jpg
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: install_httpd

httpd_running:
  service.running:
    - name: httpd
    - enable: true
    - require:
      - file: index_file
