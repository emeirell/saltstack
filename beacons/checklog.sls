Monitor_log_for_error:
  beacon.present:
    - enable: true
    - save: true
    - name: log
    - file: /var/log/edu.log
    - tags:
       mylog/myerror:
       regex: erro:10
