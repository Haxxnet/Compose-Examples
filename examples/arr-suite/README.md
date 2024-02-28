# References

- https://docs.linuxserver.io/images/docker-prowlarr/
- https://docs.linuxserver.io/images/docker-sonarr/
- https://docs.linuxserver.io/images/docker-radarr/
- https://docs.linuxserver.io/images/docker-qbittorrent/
- https://docs.linuxserver.io/images/docker-emby/

# Notes

> [!WARNING]
> Downloading copyright restricted movies or media in general is illegal in most countries.
>
>  Use this docker stack responsibly!

Docker stack consisting of various arr-services like:

- Prowlarr
  - Used to index torrent links from the internet
- Sonarr
  - Used to scan for tv shows
- Radarr
  - Used to scan for movies
- Qbittorrent
  - Used to download movies, tv shows, media in general
  - A temporary password for the `admin` user will be printed to the container log on startup
- Emby
  - Used to manage media and stream it
 
Combine with a reverse proxy like Traefik and maybe also a VPN.

