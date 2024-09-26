# References

- https://github.com/n8n-io/n8n
- https://github.com/n8n-io/n8n/tree/master/docker/compose/withPostgres

# Notes

You have to pre-supply a database init script to properly setup the postgresql database beforehand.

Please follow these steps to do so:

````
# create new directory for database
mkdir -p /mnt/docker-volumes/n8n/storage

# move the init file from this repo to the new location
mv init-database.sh /mnt/docker-volumes/n8n/.

# optional; adjust permissions
sudo chmod -R 777 /mnt/docker-volumes/n8n/
````

Afterwards, you can proceed spawning up the docker compose stack with:

````
docker compose up -d
````
