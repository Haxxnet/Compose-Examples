# References

- https://docs.linuxserver.io/images/docker-prowlarr/
- https://docs.linuxserver.io/images/docker-sonarr/
- https://docs.linuxserver.io/images/docker-radarr/
- https://docs.linuxserver.io/images/docker-lidarr/
- https://docs.linuxserver.io/images/docker-readarr/
- https://docs.linuxserver.io/images/docker-bazarr/
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
- Bazarr
  - Used for subtitles 
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

You can follow parts of [this Youtube tutorial](https://youtu.be/LD8-Qr3B2-o?si=49RQxJ5KRcoETCiQ&t=740) on how to configure most of the arr applications.

**Note**:  As all arr containers live within the same Docker network, you can easily reference container names instead of IPs. Docker will resolve the container names automatically to the current docker containers' IP. No need for port mappings or defining your Docker server's IP address. Use Docker networks! The only exception is qbittorrent, which uses the vpn killswitch network of the gluetun container. Here, the gluetun container will expose qbittorrent's web ui on TCP/8080 and the IP address of your docker host server. Setup qbittorrent in all arr-applications using your server's local IP address, on which port 8080 is mapped to.

Please make sure to configure authentication for all arr containers. Authentication is often optional and not enabled per default.

### Gluetun

Please refer to the official wiki of Gluetun to configure it for your commercial VPN provider in use.

For this compose example, we will use Mullvad VPN, which is a privacy-friendly VPN provider that does not log. If you use another VPN provider, you have to adjust the environment variables typically.

https://github.com/qdm12/gluetun-wiki

### Prowlarr

#### API Connection to other Arrs

After spawning up the compose stack, Prowlarr will be accessible on `http://<YOUR-IP>:9696`.

Within Prowlarr, we have to configure API connectivity to Sonarr, Lidarr, Readarr and any other arrs. To do so, just log into Prowlarr via the HTTP UI and access `Settings > Apps` under `/settings/applications`. Hit the plus button and add your arr application.

To add an arr application, you typically have to create an API key first. To do so, log into the other arr applications via the UI and create an API key. You can find the application area for this typically at `Settings > General > API Key` under `/settings/general`.

Just make sure that the URL is correct and paste the API key. Should look something like this:

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/8915f9f3-081f-41d2-9c5e-bdf9553e09c2)

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/94de5802-3b26-420b-bb1d-ac82cd5a5cfb)

**Note**:  As all arr containers live within the same Docker network, you can easily reference container names instead of IPs. Docker will resolve the container names automatically to the current docker containers' IP. No need for port mappings or defining your Docker server's IP address. 

#### Flareresolverr Cloudflare Bypass

Moreover, we will add FlareResolverr to Prowlarr in order to bypass CloudFlare for some indexers. To do so, head over to `Settings > Indexer` under `settings/indexers` at Prowlarr. Hit the plus button and add FlareResolverr. Ensure to define the correct URL and also the tag `flaresolverr`.

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/19a26a74-dae0-4381-9614-46d20f912542)

#### Qbittorrent Download Client

Finally, add Qbittorrent as download client to Prowlarr. Head over to `Settings > Download Clients` and add a new one. 

Define your server's IP address at `Host` (or the container name `arr-suite-gluetun`) and `8080` at `Port`.

### Qbittorrent

> [!WARNING]
> Qbittorrent is run behind the Gluetun VPN killswitch container. Therefore, we have to port map the Qbittorrent port 8080 at the gluetun container.

Log into the Qbittorrent web UI. The UI is typically accessible from `http://<YOUR-IP>:8080`. 

The default username is `admin`. Make sure to change the password immediately. The initial password is printed in the container logs. If you do not change the password immediately, a new password will printed and set upon next container restart.

Then head over to `Settings > Downloads` and configure the custom download path `/media/downloads` as follows:

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/278b800d-2b6b-45cb-a44c-7f56def7f9d3)

> [!TIP]
> If you would like to ensure that Qbittorrent downloads stuff via the gluetun VPN killswitch and not your personal WAN IP, you may use [this GitHub project](https://github.com/AKK9/torrent-ip-checker). It is an example torrent file, which does not actually download something malicious but reports back your disclosed IP address. The reported IP address must be the one from your commercial VPN provider like Mullvad. Just download the torrent file from the GH repo and upload it in Qbittorrent's web UI via `File > Add torrent file`.

### Sonarr, Radarr, Lidarr, Readarr, Bazarr

All other arr applications follow the same configuration steps.

1. Configure authentication for the arr's HTTP UI. Can be done regularly via `Settings > General`.
2. Ensure to define your media location. Can be done regularly via `Settings > Media Management > Root Folders > Path`. Should point to `/media/music` for Lidarr, `/media/tv-shows` for Sonarr, `/media/movies` for Radarr and so on.
3. Configure Qbittorrent as download client. Can be done regularly via `Settings > Download Clients`. Define your server's IP address at `Host` (or the container name `arr-suite-gluetun`) and `8080` at `Port`.
4. Fix all `System > Health` warnings and errors reported by each arr container. May refer to https://wiki.servarr.com/.

- Sonarr is accessible at `http://<YOUR-IP>:8989/`
- Radarr is accessible at `http://<YOUR-IP>:7979/`
- Lidarr is accessible at `http://<YOUR-IP>:8686/`
- Bazarr is accessible at `http://<YOUR-IP>:6767/`
- Readarr is accessible at `http://<YOUR-IP>:8787/`

### Emby / Jellyfin

1. Configure authentication for your media streaming app. Can be done natively via the HTTP UI settings.
2. Ensure to define your media location for your library. Can be done natively via the HTTP UI settings.
3. Configure transcoding and passthrough your GPU into the container (optional)

### Reverse Proxy

It is recommended to run all containers with an HTTP UI behind a reverse proxy. The reverse proxy can enforce a TLS encrypted communication channel with valid SSL certificates.

This example Compose Stack includes labels for the Traefik reverse proxy. Uncomment to make use of it.

If you run a different reverse proxy, please adjust to its official documentation on how to configure proxy hosts.

> [!TIP]
> Once a reverse proxy is in use, you can typically remove all port mappings from the Docker Compose file. The reverse proxy will do the proxying and should be placed in the same network as the arr media stack.
>
> Note that the Qbittorrent TCP/8080 port is mapped at the Gluetun VPN killswitch container. So your reverse proxy must proxy to Gluetun in order to access the Qbittorrent admin UI.

#### Traefik + Emby + HTTP Headers

During the setup of Emby in a web browser (HTTPS via Traefik) you may notice errors in the developer console, which prevent the web page from loading properly.

Those errors occur, if you have configured secure HTTP response headers such as X-Content-Type-Options with the directive "nosniff".

To complete the web-based setup, you either have to temporarely disable the HTTP header or browse the Emby instance without Traefik as reverse proxy. 

After the setup was completed, the errors are gone and you can use Emby regularly with Traefik, HTTPS and any X-Content-Type-Options header configuration.
