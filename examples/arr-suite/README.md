# References

- https://docs.linuxserver.io/images/docker-prowlarr/
- https://docs.linuxserver.io/images/docker-sonarr/
- https://docs.linuxserver.io/images/docker-radarr/
- https://docs.linuxserver.io/images/docker-lidarr/
- https://docs.linuxserver.io/images/docker-readarr/
- https://github.com/FlareSolverr/FlareSolverr
- https://docs.linuxserver.io/images/docker-qbittorrent/
- https://hub.docker.com/r/qmcgaw/gluetun
- https://docs.linuxserver.io/images/docker-emby/
- https://docs.linuxserver.io/images/docker-jellyfin (alternative option to emby)

# Notes

> [!WARNING]
> Downloading copyright restricted movies or media in general is illegal in most countries.
>
>  Use this docker stack responsibly!

> [!CAUTION]
> This setup makes use of gluetun to obtain a vpn killswitch network. This requires a vpn provider like mullvad or others.

Docker stack consisting of various arr-services like:

- Prowlarr
  - Used as indexer for torrent links
- Sonarr
  - Used for tv shows
- Radarr
  - Used for movies
- Lidarr
  - Used for music
- Readarr
  - Used for books
- Flaresolverr
  - Used to bypass Cloudflare for prowlarr
  - You must add it at prowlarr as indexer with the tag `flaresolverr`
- Qbittorrent
  - Used as download client; run behind gluetun vpn killswitch container
  - A temporary password for the `admin` user will be printed to the container log on startup. Change it immediately to a static one that does not change again.
- Gluetun
  - Used for establishing an openvpn/wireguard killswitch vpn connection for qbittorrent
  - Requires an active subscription for a vpn provider (e.g. Mullvad)
- Emby / Jellyfin
  - Used to manage your media libraries and stream it from various devices
 
The following bind mount volumes are defined:

- `/arr-suite/configs/<container-name>`
  - holds the config files of an arr container
- `/arr-suite/media/`
  - will hold your media files such as movies, music, books, tv-shows, qbittorrent downloads etc.

## Setup

You can follow this Youtube tutorial on how to setup most of the arr applications:

https://www.youtube.com/watch?v=LD8-Qr3B2-o

**Note**:  As all arr containers live within the same Docker network, you can easily reference container names instead of IPs. Docker will resolve the container names automatically to the current docker containers' IP. No need for port mappings or defining your Docker server's IP address. Use Docker networks! The only exception is qbittorrent, which uses the vpn killswitch network of the gluetun container. Here, the gluetun container will expose qbittorrent's web ui on TCP/8080 and the IP address of your docker host server. Setup qbittorrent in all arr-applications using your server's local IP address, on which port 8080 is mapped to.

> [!WARNING]
> We configured qbittorrent to use the non-default path `/media/downloads` for downloads.
>
> Please define this location path in the qbittorrent admin panel too!

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/278b800d-2b6b-45cb-a44c-7f56def7f9d3)

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/8915f9f3-081f-41d2-9c5e-bdf9553e09c2)

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/94de5802-3b26-420b-bb1d-ac82cd5a5cfb)

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/19a26a74-dae0-4381-9614-46d20f912542)

## Traefik + Emby + HTTP Headers

During the setup of Emby in a web browser (HTTPS via Traefik) you may notice errors in the developer console, which prevent the web page from loading properly.

Those errors occur, if you have configured secure HTTP response headers such as X-Content-Type-Options with the directive "nosniff".

To complete the web-based setup, you either have to temporarely disable the HTTP header or browse the Emby instance without Traefik as reverse proxy. 

After the setup was completed, the errors are gone and you can use Emby regularly with Traefik, HTTPS and any X-Content-Type-Options header configuration.
