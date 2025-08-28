# References

- https://github.com/linuxserver/docker-changedetection.io
- https://github.com/dgtlmoon/sockpuppetbrowser
- https://github.com/dockage/tor-privoxy

# Notes

You can optionally uncomment the tor socks proxy in the `docker-compose.yml`. 

If so, you can configure changedetection to support watching .onion darknet websites.

>[!CAUTION]
> For this to work, you have to place the `proxies.json` file at the docker bind mount volume `/mnt/docker-volumes/changedetection/config/proxies.json`.
>
> Then restart the container.
>
> Within changedetection, you can now choose the proxy to use.

<img width="1008" height="447" alt="image" src="https://github.com/user-attachments/assets/883cac36-380f-450e-80ee-925fed8a7667" />
