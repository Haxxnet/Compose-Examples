# References

- https://www.passbolt.com

# Notes

Passbolt container runs as specific user with a UID and GUID of `33`.

Therefore, ensure proper permissions on the Docker data bind mount volumes:

````
sudo chgrp 33 /mnt/docker-volumes/passbolt/gpg
sudo chmod 770 /mnt/docker-volumes/passbolt/gpg

sudo chgrp 33 /mnt/docker-volumes/passbolt/jwt
sudo chmod 770 /mnt/docker-volumes/passbolt/jwt
````
