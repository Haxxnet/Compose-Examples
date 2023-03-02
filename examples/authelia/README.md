# References

- https://github.com/authelia/authelia
- https://www.youtube.com/watch?v=u6H-Qwf4nZA&t=1314s
- https://docs.technotim.live/posts/authelia-traefik/

# Notes

You have to put the configuration files from the directory `config` here to your Docker volume bind mount.

The do the following:

1. Adjust the configuration.yml to your needs. Especially replace exmaple.com with your own domain name. Add all your to be protected subdomains to the access_control area.
2. Adjust users_database.yml and add your user accounts. You can create new password hashes via `docker run --rm authelia/authelia:latest authelia crypto hash generate argon2 --password 'ExamplePassword'`
3. Adjust your Traefik dynamic configuration and add authelia as middleaware. See [here](../traefik/fileConfig.yml) for an example configuration file.
4. Finally, add authelia as middleware for each container to protect. I recommend using labels. Note that authelia should always be listed first.

````
    labels:
      - traefik.enable=true
      - traefik.http.routers.protected-service.middlewares=authelia@file,local-ipwhitelist@file
````
