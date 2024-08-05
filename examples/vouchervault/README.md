# References

- https://github.com/l4rm4nd/VoucherVault

# Notes

> [!WARNING]
> The container runs as low-privileged `www-data` user. So you have to adjust the permissions for the persistent database bind mount volume.

````
# create volume dir for persistence
mkdir -p /mnt/docker-volumes/vouchervault/database

# adjust permissions
sudo chown -R www-data:www-data /mnt/docker-volumes/vouchervault/*

# spawn the container stack
docker compose up
````
