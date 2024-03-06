#Keep the desired admin accounts
support_user:
  user.present:
    - fullname: Support User
    - name: support
    - usergroup: False
    - password: VMware1!
    - hash_password: True
    - groups:
      - wheel
      - users

not_allowed_users:
  user.absent:
    - name: emeirelles
    - purge: True
    - force: True
