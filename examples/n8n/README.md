# References

- https://github.com/n8n-io/n8n
- https://github.com/n8n-io/n8n/tree/master/docker/compose/withPostgres

# Notes

You have to pre-supply a database init script to properly setup the postgresql database beforehand.

Please follow these steps to do so:

````
# create new directory for database
mkdir -p /mnt/docker-volumes/n8n

# move the init file from this repo to the new location
mv init-database.sh /mnt/docker-volumes/n8n/.

# optional; adjust permissions
sudo chmod -R 777 /mnt/docker-volumes/n8n/
````

Afterwards, you can proceed spawning up the docker compose stack with:

````
docker compose up
````

> [!WARNING]
> Upon starting the stack you may see n8n errors regarding permissions:
>
> ````
> [EACCES] Error Plugin: n8n: EACCES: permission denied, open '/home/node/.n8n/config'
> ````
>
> You can fix those my running:
> ````
> sudo chmod -R 777 /mnt/docker-volumes/n8n/database
> ````
>
> and restarting the stack:
>
> ````
> docker compose up --force-recreate
> ````
