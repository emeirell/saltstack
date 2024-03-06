FTPServer-rRole:
  win_servermanager.installed:
    - recurse: True
    - name: Web-Ftp-Server
