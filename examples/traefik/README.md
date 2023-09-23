# References

- https://github.com/traefik/traefik
- https://docs.ibracorp.io/traefik/master/docker-compose
- https://blog.lrvt.de/nginx-proxy-manager-versus-traefik/
- https://blog.lrvt.de/configuring-fail2ban-with-traefik/
- https://github.com/l4rm4nd/F2BFilters

# Notes

Spawning up a Traefik reverse proxy can be done in various ways. 

There are options to outsource the Traefik configuration into static and dynamic YAML configuration files. Alternatively, the configuration parameters can be defined directly as command definitions, which are applied during runtime of the Traefik container. We've provided both options as Docker Compose examples.

Please remember to configure logrotation on your Docker host server if you've enabled Traefik access logs. See `logrotate_example.txt` as example. The logs will increase in size and may cause disk space issues, if not handled properly.

### Spawning up Traefik with outsourced configuration files

1. Put the provided `traefik.yml` (static) and `fileConfig.yml` (dynamic) configuration files to your volume bind mount (here `/mnt/docker-volumes/traefik`). 
2. Add your Cloudflare API token as environment variable to the `docker-compose.yml` file and define your Cloudflare email address in the `traefik.yml` file. May adjust to your preferred certresolver. The example given is for Cloudflare.
3. Adjust the static and dynamic configuration files to your needs. Especially replace the `example.com` strings with your domain name in the `traefik.yml` static configuration file. Also adjust the authelia and basic auth definitions in the `fileConfig.yml` dynamic configuration file with secure values and your domain names.

### Spawning up Traefik with configuration command definitions

1. Use the `docker-compose-command-config.yml` example as a reference point.
2. Put the provided `fileConfig.yml` (dynamic) configuration file to your volume bind mount (here `/mnt/docker-volumes/traefik`).
3. Add your Cloudflare API token as environment variable in the compose file. Define your Cloudflare email address in the command definitions of the compose file. May adjust to your preferred certresolver. The example given is for Cloudflare.
4. Adjust the dynamic configuration file `fileConfig.yml` to your needs. Especially adjust the authelia and basic auth definitions with secure values and your domain names.
