IIS-WebServerRole:
  cmd.run:
    - name: Install-WindowsFeature -name Web-Server -IncludeManagementTools
    - shell: powershell

index_file:
  file.managed:
    - name: C:\inetpub\wwwroot\index.html
    - source: salt://linux/corpapp/index.html
    - require:
      - cmd: IIS-WebServerRole

logo_file:
  file.managed:
    - name: C:\inetpub\wwwroot\cna.jpg
    - source: salt://config/cna.jpg
    - require:
      - cmd: IIS-WebServerRole
      
delete_default:
  file.absent:
    - names:
      - C:\inetpub\wwwroot\iisstart.htm
      - C:\inetpub\wwwroot\iisstart.png
