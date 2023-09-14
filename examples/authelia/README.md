# References

- https://github.com/authelia/authelia
- https://www.youtube.com/watch?v=u6H-Qwf4nZA&t=1314s
- https://docs.technotim.live/posts/authelia-traefik/

# Notes

You have to put the configuration files from the directory `config` here to your Docker volume bind mount.

The do the following:

1. Adjust the configuration.yml to your needs. Especially replace exmaple.com with your own domain name. Add all your to be protected subdomains to the access_control area. Replace all secrets with your secure strings (may use `openssl rand -base64 35` to generate a secure, random string).
2. Adjust users_database.yml and add your user accounts. You can create new password hashes via `docker run --rm authelia/authelia:latest authelia crypto hash generate argon2 --password 'ExamplePassword'`
3. Finally, add authelia as middleware for each container to protect. I recommend using labels. Note that authelia should always be listed first.

````
    labels:
      - traefik.enable=true
      - traefik.http.routers.protected-service.middlewares=authelia@docker,local-ipwhitelist@file
````

**Note**: You can also add Authelia as file provider middleware. See [here](../traefik/fileConfig.yml) for an example Traefik dynamic configuration file. Afterwards, you can use the file provider `authelia@file` instead or besides of `authelia@docker`.
