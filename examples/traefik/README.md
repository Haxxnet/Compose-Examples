# References

- https://github.com/traefik/traefik
- https://blog.lrvt.de/nginx-proxy-manager-versus-traefik/
- https://blog.lrvt.de/configuring-fail2ban-with-traefik/
- https://github.com/l4rm4nd/F2BFilters

# Notes

Put the provided `traefik.yml` (static) and `fileConfig.yml` (dynamic) configuration files to your volume bind mount (here `/mnt/docker-volumes/traefik`). 

Optionally configure logrotation on your Docker host server if you've enabled Traefik access logs. See `logrotate_example.txt` as example.
