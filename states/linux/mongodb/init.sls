include:
  - linux.mongodb.repo
  
# Install MongoDB
install_mongodb:
  pkg.installed:
    - pkgs:
      - mongodb-org

# Make sure service is enabled and running
mongodb_running:
  service.running:
    - name: mongod
    - enable: true
    - require:
      - pkg: install_mongodb
