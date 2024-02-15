# References

- https://hub.docker.com/r/guacamole/guacamole/

# Notes

Before spawning up the Docker Compose stack you have to pre-supply an `initdb.sql` initialization file for the Postgresql database.

The file is provided in this repository but can also be created dynamically via:

````
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgresql > initdb.sql
````

Please go ahead and place this init file in the corresponding Docker Volume Bind Mount.

````
mkdir -p /mnt/docker-volumes/guacamole/psql/init

# Option 1: move init file from this repo to the new location
mv initdb.sql /mnt/docker-volumes/guacamole/psql/init/.

# Option2: create it dynamically and place it to the new location
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgresql > /mnt/docker-volumes/guacamole/psql/init/initdb.sql
````

Afterwards, you can spawn up the Docker stack as follows:

````
docker compose up -d
````

The Guacamole login is available at `http://<YOUR-IP>:8080/guacamole`.

The default username is `guacadmin`. The default password is `guacadmin`.
