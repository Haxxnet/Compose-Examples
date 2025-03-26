# References

- https://github.com/l4rm4nd/VoucherVault
- https://github.com/l4rm4nd/VoucherVault/wiki/01-%E2%80%90-Installation

# Notes

> [!WARNING]
> The container runs as low-privileged `www-data` user (UID/GID 33). So you have to adjust the permissions for the persistent database bind mount volume.

````
# create volume dir for persistence
mkdir -p /mnt/docker-volumes/vouchervault/database

# adjust permissions
sudo chown -R 33:33 /mnt/docker-volumes/vouchervault/*

# spawn the container stack
docker compose up
````
