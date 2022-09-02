#Keep the desired admin accounts
support_user:
  user.present:
    - fullname: Support User
    - name: support
    - usergroup: False
    - password: '10f20f1d6feffe45327bd86444a5025a18706de8'
    - groups:
      - wheel
      - users

not_allowed_users:
  user.absent:
    - name: emeirelles
    - purge: True
    - force: True
