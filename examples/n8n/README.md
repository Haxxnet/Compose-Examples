# References

- https://github.com/n8n-io/n8n
- https://github.com/n8n-io/n8n-hosting/tree/main/docker-compose/withPostgres

# Notes

You have to pre-supply a database init script to properly setup the postgresql database beforehand.

Please follow these steps to do so:

````
# create new directory for database
mkdir -p /mnt/docker-volumes/n8n/storage

# move the init file from this repo to the new location
mv init-database.sh /mnt/docker-volumes/n8n/.

# fix permissions
sudo chown -R 0:1000 /mnt/docker-volumes/n8n/
sudo chmod -R 775 /mnt/docker-volumes/n8n/

# adjust environment variables
nano .env
````

Afterwards, you can proceed spawning up the docker compose stack:

````
docker compose up -d
````
