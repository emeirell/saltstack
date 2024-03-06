#Set up MongoDB repository
mongodb_repo:
  pkgrepo.managed:
    - humanname: Mongo DB
    - baseurl: https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/7.0/x86_64/
    - gpgcheck: 1
    - enabled: 1
    - gpgkey: https://www.mongodb.org/static/pgp/server-7.0.asc
