# fire events in case of stop sshd service
not_running_sshd:
  beacon.present:
    - name: service
    - enable: true
    - save: true
    - services:
        sshd:
          onchangeonly: true
          delay: 1
