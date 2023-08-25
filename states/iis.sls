IIS-WebServerRole:
  cmd.run:
    - name: Install-WindowsFeature -name Web-Server -IncludeManagementTools
    - shell: powershell
