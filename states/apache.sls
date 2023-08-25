install_httpd:
  pkg.installed:
    - pkgs:
      - httpd

httpd_running:
  service.running:
    - name: httpd
    - enable: true
    - require:
      - pkg: install_httpd
