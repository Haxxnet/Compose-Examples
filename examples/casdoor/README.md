# References

- https://github.com/casdoor/casdoor
- https://casdoor.org/pl/docs/basic/try-with-docker/

# Notes

You have to manually supply an `app.conf` configuration file.

Within this file, you have to define your postgresql database connection string.

An example `app.conf` is provided in this repository. Adjust it to your needs and place it at the bind mount volume `/mnt/docker-volumes/casdoor/conf/app.conf`.
