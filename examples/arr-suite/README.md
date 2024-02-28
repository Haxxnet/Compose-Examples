# References

- https://docs.linuxserver.io/images/docker-prowlarr/
- https://docs.linuxserver.io/images/docker-sonarr/
- https://docs.linuxserver.io/images/docker-radarr/
- https://docs.linuxserver.io/images/docker-qbittorrent/
- https://docs.linuxserver.io/deprecated_images/docker-requestrr/
- https://docs.linuxserver.io/images/docker-emby/

# Notes

> [!WARNING]
> Downloading copyright restricted movies or media in general is illegal in most countries.
>
>  Use this docker stack responsibly!

Docker stack consisting of various arr-services like:

- Prowlarr
  - Used as indexer for torrent links
- Sonarr
  - Used for tv shows
- Radarr
  - Used for movies
- Qbittorrent
  - Used as download client, preferably behind VPN (e.g. socks5)
  - A temporary password for the `admin` user will be printed to the container log on startup. Change it immediately to a static one that does not change again.
- Requestrr
  - Used to request movies and tv-shows by end clients 
- Emby
  - Used to manage your media libraries and stream it from various devices
 
Combine with a reverse proxy like Traefik.

## Setup

You can follow this Youtube tutorial on how to setup the arr applications:

https://www.youtube.com/watch?v=LD8-Qr3B2-o

**Note**:  As all arr containers live within the same Docker network, you can easily reference container names instead of IPs. Docker will resolve the container names automatically to the current docker containers' IP. No need for port mappings or defining your Docker server's IP address. Use Docker networks!

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/8915f9f3-081f-41d2-9c5e-bdf9553e09c2)

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/94de5802-3b26-420b-bb1d-ac82cd5a5cfb)


