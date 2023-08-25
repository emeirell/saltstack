SMTPServer-Role:
  win_servermanager.installed:
    - recurse: True
    - name: SMTP-Server
