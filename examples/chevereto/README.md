# References

- https://github.com/chevereto/chevereto

# Notes

If you want to use bind mounts instead of Docker volumes, you can do so.

However, the container will report back permission errors for the path `/var/www/html/images/_assets/`. Something like:

````
chevereto          | Exception thrown in /var/www/html/app/src/Legacy/Classes/LocalStorage.php:45
chevereto          | 
chevereto          | # Message [Code #600]
chevereto          | Path /var/www/html/images/_assets/ is not writable
````

Those can only be solved by spawning a shell into the Docker container and fixing the permissions as follows:

````
# spawning shell into the docker container
docker exec -it chevereto bash

# fixing permissions to www-data
mkdir -p /var/www/html/images/_assets
chown -R www-data:www-data /var/www/html/images/*
chmod -R 777 /var/www/html/images/*
````
No container restart necessary. The web application should now work flawlessly.

Note: The permission issues only occur if bind mounts are used over Docker named volumes.
