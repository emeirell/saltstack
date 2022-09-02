# check if banner has been changed
modified_banner:
  beacon.present:
    - name: inotify
    - save: true
    - enable: true
    - files:
        /etc/motd:
          mask:
            - modify
    - disable_during_state_run: True
