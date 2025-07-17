# References

- https://github.com/joedwards32/CS2
- https://github.com/shobhit-pathak/cs2-rcon-panel
- https://github.com/l4rm4nd/cs2-rcon-panel

# Notes

Minimum system requirements are:

- 2 CPUs
- 2 GiB RAM
- 40 GB of disk space for the container or mounted as a persistent volume on /home/steam/cs2-dedicated/

Default login for the rcon panel is `cspanel:v67ic55x4ghvjfj`. You can change this via environment variables.

> [!TIP]
> If you restart the container, the CS2 server will automatically pull and install updates. So may configure a cronjob to regularly restart the container to keep your CS2 dedicated server up-to-date.
