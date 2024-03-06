include:
  - admin.reloadhttpd

#Configure apache server-status
enable_server-status-page:
  file.append:
    - name: /etc/httpd/conf/httpd.conf
    - text:
      - '<Location "/server-status">'
      - '  SetHandler server-status'
      - '</Location>'
    - watch_in:
      - service: reload_httpd
