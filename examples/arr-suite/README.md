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
  - Used to bypass CloudFlare for indexers on Prowlarr
- Qbittorrent
  - Used as download client; run behind gluetun vpn killswitch container
- Gluetun
  - Used to establish a VPN killswitch connection for Qbittorrent to a commercial VPN provider (e.g. Mullvad)
- Emby or Jellyfin
  - Used to manage your media libraries and stream content from various devices
 
The following bind mount volumes are defined:

- `/arr-suite/configs/<container-name>`
  - holds the config files of an arr container
- `/arr-suite/media/<folder>`
  - will hold your media files such as movies, music, books, tv-shows, qbittorrent downloads etc.

## Setup

You can follow parts of [this Youtube tutorial](https://youtu.be/LD8-Qr3B2-o?si=49RQxJ5KRcoETCiQ&t=740) on how to configure most of the arr applications.

> **Note**:  As all arr containers live within the same Docker network, you can easily reference container names instead of IPs. Docker will resolve the container names automatically to the current docker containers' IP. No need for port mappings or defining your Docker server's IP address. Use Docker networks! The only exception is qbittorrent, which uses the vpn killswitch network of the gluetun container. Here, the gluetun container will expose qbittorrent's web ui on TCP/8080 and the IP address of your docker host server. Setup qbittorrent in all arr-applications using your server's local IP address, on which port 8080 is mapped to.

Please make sure to configure authentication for all arr containers. Authentication is often optional and not enabled per default.

### Gluetun

Please refer to the official wiki of Gluetun to configure it for your commercial VPN provider in use.

This must be done before spawning up the Docker Compose stack.

For this compose example, we used Mullvad VPN, which is a privacy-friendly VPN provider that does not log. If you use another VPN provider, you have to adjust the environment variables typically.

https://github.com/qdm12/gluetun-wiki

### Volume Mappings

The following bind mount volumes are defined within the Docker Compose stack:

- `/arr-suite/configs/<container-name>`
  - holds the config files of an arr container; automatically created during during compose stack start
- `/arr-suite/media/<folder>`
  - will hold your media files such as movies, music, books, tv-shows, qbittorrent downloads etc.
  - only the downloads folder will be created automatically by Qbittorrent during compose stack start

The media folders should be created before starting up the compose stack. To do so, issue these commands:

````bash
# create subfolders for our media library
mkdir -p ${DOCKER_VOLUME_STORAGE:-/mnt/docker-volumes}/arr-suite/media/{downloads,movies,tv-shows,music,books}

# adjust permissions
sudo chown -R 1000:1000 ${DOCKER_VOLUME_STORAGE:-/mnt/docker-volumes}/arr-suite/media/
sudo chmod -R 775 ${DOCKER_VOLUME_STORAGE:-/mnt/docker-volumes}/arr-suite/media/
````

Afterwards, we can spawn up the stack via:

````bash
docker compose up -d
````

### Prowlarr

#### API Connection to other Arrs

After spawning up the compose stack, Prowlarr will be accessible on `http://<YOUR-IP>:9696`.

Within Prowlarr, we have to configure API connectivity to Sonarr, Lidarr, Readarr and any other arrs. To do so, just log into Prowlarr via the HTTP UI and access `Settings > Apps` under `/settings/applications`. Hit the plus button and add your arr application.

To add an arr application, you typically have to create an API key first. To do so, log into the other arr applications via the UI and create an API key. You can find the application area for this typically at `Settings > General > API Key` under `/settings/general`.

Just make sure that the URL is correct and paste the API key. Should look something like this:

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/8915f9f3-081f-41d2-9c5e-bdf9553e09c2)

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/94de5802-3b26-420b-bb1d-ac82cd5a5cfb)

> **Note**:  As all arr containers live within the same Docker network, you can easily reference container names instead of IPs. Docker will resolve the container names automatically to the current docker containers' IP. No need for port mappings or defining your Docker server's IP address. 

#### FlareResolverr CloudFlare Bypass

Moreover, we will add FlareResolverr to Prowlarr in order to bypass CloudFlare for some indexers. To do so, head over to `Settings > Indexer` under `/settings/indexers`. Hit the plus button and add FlareResolverr. 

Ensure to define the correct URL and also the tag `flaresolverr`. The tag must be defined again when adding indexers that are protected by CloudFlare (e.g. 1337x).

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/19a26a74-dae0-4381-9614-46d20f912542)

![image](https://github.com/user-attachments/assets/548c8e93-24da-41fb-8b4d-ba7d9061b51f)

#### Qbittorrent Download Client

Finally, add Qbittorrent as download client to Prowlarr. Head over to `Settings > Download Clients` and add a new one. 

Define your server's IP address at `Host` (or the container name `arr-suite-gluetun`) and `8080` at `Port`.

![image](https://github.com/user-attachments/assets/a21d117c-7ebf-4e01-a14e-11b8e3e59600)

### Qbittorrent

> [!WARNING]
> Qbittorrent is run behind the Gluetun VPN killswitch container. Therefore, we have to port map the Qbittorrent port 8080 at the gluetun container.
>
> This is also the reason why we define `arr-suite-gluetun` as host when adding Qbittorent and its port 8080 as download client to other arr containers.

Log into the Qbittorrent's web UI. The UI is typically accessible from `http://<YOUR-IP>:8080`. 

The default username is `admin`. Make sure to change the password immediately. The initial password is printed in the container logs. If you do not change the password immediately, a new password will be printed and set upon each container restart.

Then head over to `Settings > Downloads` and configure the custom download path `/media/downloads` as follows:

![image](https://github.com/Haxxnet/Compose-Examples/assets/21357789/278b800d-2b6b-45cb-a44c-7f56def7f9d3)

> [!TIP]
> If you would like to ensure that Qbittorrent downloads stuff via the gluetun VPN killswitch and not your personal WAN IP, you may use [this GitHub project](https://github.com/AKK9/torrent-ip-checker). It is an example torrent file, which does not actually download something malicious but reports back your disclosed IP address. The reported IP address must be the one from your commercial VPN provider like Mullvad.
>
> Just [download the torrent file](https://vvdapo30eb.execute-api.eu-west-2.amazonaws.com/torrent) and upload it via Qbittorrent's web UI via `File > Add torrent file`.

![image](https://github.com/user-attachments/assets/5c7531eb-2cd7-4b16-968d-32a00cc4020a)

#### Indexers

Add your preferred indexers such as 1337X and many others. Do not forget to add the `flaresolverr` tag to bypass CloudFlare.

### Sonarr, Radarr, Lidarr, Readarr, Bazarr

All other arr applications follow the same configuration steps.

- Sonarr is accessible at `http://<YOUR-IP>:8989/`
- Radarr is accessible at `http://<YOUR-IP>:7878/`
- Lidarr is accessible at `http://<YOUR-IP>:8686/`
- Readarr is accessible at `http://<YOUR-IP>:8787/`
- Bazarr is accessible at `http://<YOUR-IP>:6767/`

Follow these steps for each individuall arr container:

1. Configure authentication for the arr's HTTP UI. Can be done regularly via `Settings > General`.
2. Ensure to define your media location. Can be done regularly via `Settings > Media Management > Root Folders > Path`. Should point to `/media/music` for Lidarr, `/media/tv-shows` for Sonarr, `/media/movies` for Radarr and `/media/books` for Readarr and so on. If those subdirectories do not exist yet, go ahead and create them via the following command:
    - `mkdir -p /mnt/docker-volumes/arr-suite/media/{downloads,movies,tv-shows,music,books}`
4. Configure Qbittorrent as download client. Can be done regularly via `Settings > Download Clients`. Define your server's IP address at `Host` (or the container name `arr-suite-gluetun`) and `8080` at `Port`.
5. Configure Bazarr for Radarr and Sonarr. See https://wiki.bazarr.media/Getting-Started/Setup-Guide/
6. Fix all `System > Health` warnings and errors reported by each arr container. May refer to https://wiki.servarr.com/.

### Emby / Jellyfin

The Docker Compose stack makes use of Emby as default. 

You can switch to Jellyfin by removing the Emby container service and uncommenting the Jellyfin one though.

- Emby or Jellyfin is accessible at `http://<YOUR-IP>:8096/`

Follow the below steps to configure one of these media streaming containers:

1. Setup authentication for your media streaming app. Is done automatically during the HTTP setup wizard.
2. Ensure to define your media location for your library. Can be done natively via the HTTP UI settings.
3. Configure transcoding and passthrough your GPU into the container (optional)

### Reverse Proxy

It is recommended to run all containers with an HTTP UI behind a reverse proxy. The reverse proxy can enforce a TLS encrypted communication channel with valid SSL certificates. Also add access controls via IP whitelisting, IdP forward-auth and many more.

This example Compose Stack includes labels for the Traefik reverse proxy. Uncomment those to make use of it. Otherwise, remove them.

If you run a different reverse proxy, please refer to the official documentation on how to configure proxy hosts. The ports to proxy on are defined in the Docker Compose file using the `expose` directive.

> [!TIP]
> Once a reverse proxy is in use, you can typically remove all port mappings from the Docker Compose file. The reverse proxy will do the proxying and must be placed in the same Docker bridge network as the arr media stack.
>
> Note that the Qbittorrent TCP/8080 port is mapped at the Gluetun VPN killswitch container. So your reverse proxy must proxy to the 8080 port mapped on your docker server's IP address in order to access the Qbittorrent admin UI.

#### Traefik + Emby + HTTP Headers

During the setup of Emby in a web browser (HTTPS via Traefik) you may notice errors in the developer console, which prevent the web page from loading properly.

Those errors occur, if you have configured secure HTTP response headers such as X-Content-Type-Options with the directive "nosniff".

To complete the web-based setup, you either have to temporarely disable the HTTP header or browse the Emby instance without Traefik as reverse proxy. 

After the setup was completed, the errors are gone and you can use Emby regularly with Traefik, HTTPS and any X-Content-Type-Options header configuration.
