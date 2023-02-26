# References

- https://github.com/traefik/traefik
- https://docs.ibracorp.io/traefik/master/docker-compose
- https://blog.lrvt.de/nginx-proxy-manager-versus-traefik/
- https://blog.lrvt.de/configuring-fail2ban-with-traefik/
- https://github.com/l4rm4nd/F2BFilters

# Notes

1. Put the provided `traefik.yml` (static) and `fileConfig.yml` (dynamic) configuration files to your volume bind mount (here `/mnt/docker-volumes/traefik`). 
2. Add your Cloudflare API token as environment variable to the `docker-compose.yml` file and define your Cloudflare email address in the `traefik.yml` file.
3. Adjust the static and dynamic configuration files to your needs. Especially replace the `example.com` strings with your domain name.

Optionally configure logrotation on your Docker host server if you've enabled Traefik access logs. See `logrotate_example.txt` as example.
