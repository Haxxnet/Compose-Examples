# References

- https://github.com/linuxserver/docker-changedetection.io

# Notes

You can optionally uncomment the tor socks proxy in the `docker-compose.yml`. If so, you can make use of changedetection to watch and monitor .onion siteds in the darknet.

For this to work, you have to place the `proxies.json` file at the docker bind mount volume `/mnt/docker-volumes/changedetection/config/proxies.json`.

Then restart the container. Within changedetection, you can now choose the proxy to use.
