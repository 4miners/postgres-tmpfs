# postgres-tmpfs

Reference: http://www.manniwood.com/postgresql_94_in_ram/index.html

Install:
```
sudo cp ramdb.sql /usr/lib/postgresql/9.6/bin/ramdb.sql
sudo cp pg-ram.service /etc/systemd/system/pg-ram.service
sudo systemctl daemon-reload
```

Usage:
```
sudo systemctl start pg-ram
sudo systemctl status pg-ram
sudo systemctl stop pg-ram
```

Always after start:
```
sudo -u postgres createuser -s $(whoami); createdb $(whoami);
```
