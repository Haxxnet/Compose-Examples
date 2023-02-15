# Compose-Examples
Various Docker Compose examples of selfhosted projects.

- Volume bind mounts are assumed to be located at `/mnt/docker-volumes/<container-name>/`
- Docker networks are not hardcoded and may have to be created or defined manually
- Example config files are provided but not yet located in the correct volume bind mount path. Adjust!
- Default credentials should be adjusted to your needs

Otherwise, it should be a matter of:
````
git clone https://github.com/Haxxnet/Compose-Examples && cd Compose-Examples
cd <container-of-interest>
docker compose up -d 
````

## Dashboards
- [Homepage](homepage)
- [Homer](homer)
- [Dashy](dashy)
- [Homarr](homarr)
- [Flame](flame)
- [Heimdall](heimdall)

## Password Management
- [Vaultwarden](vaultwarden)
- [Bitwarden Unified](bitwarden-unified)

## Reverse Proxies
- [Traefik](traefik)
- [Nginx Proxy Manager](nginx-proxy-manager)
- [Caddy](caddy)

## Virtual Private Network (VPN)
- [wg-easy](wg-easy)
- ~~[Netbird](TBD)~~
- ~~[Firezone](TBD)~~
- ~~[Wireguard](TBD)~~

## Domain Name Service (DNS)
- [Adguard Home](adguard-home)
- [Adguard Home Sync](adguard-home-sync)
- [Technitium DNS](technitium-dns)
- [Pihole](pihole)
- [Cloudflare DDNS](cloudflare-ddns)

## Repository Management & Coding
- [Gitea](gitea)
- [Drone](drone)
- [Code Server](code-server)
- [Obsidian-Remote](obsidian-remote)
- ~~[Onedev](TBD)~~
- ~~[Gitlab](TBD)~~

## Monitoring
- [Watchtower](watchtower)
- [Portainer Enterprise](portainer-ee)
- [Uptimekuma](uptimekuma)
- [Changedetection](changedetection)
- [Grafana Stack](grafana-monitoring)
- [Speedtest-Tracker](speedtest-tracker)
- [Openspeedtest](openspeedtest)
- [Goaccess for Nginx Proxy Manager](nginx-proxy-manager-goaccess)
- [WatchYourLAN](watchyourlan)
- [Network-Multitool](network-multitool)

## Recipe Managers
- [Tandoor](tandoor)
- [Mealie](mealie)

## Media Management
- [Immich](immich)
- [Photoprism](photoprism)
- [Deemix](deemix)
- [Papermerge](papermerge)
- [Paperless NGX](paperless-ngx)

## File Sharing
- [PrivateBin](privatebin)
- [Nextcloud](nextcloud)
- [Pwndrop](pwndrop)
- [Seafile](seafile)
- [Droppy](droppy)
- [SFTPGo](sftpgo)
- [Gokapi](gokapi)
- [Projectsend](projectsend)

## Publishing, Writing, Hosting
- [Excalidraw](excalidraw)
- [Overleaf](overleaf)
- [Ghost CMS](ghost)
- [Nginx + PHP](nginx-php)

## Analytics
- [Matomo](matomo)
- [Plausible](plausible)

## Security & Vulnerability Management
- [Nessus](nessus)
- [Greenbone](greenbone)
- [SonarQube](sonarqube)
- [Fail2ban](fail2ban)

## Internet of Things / Smart Home
- [Home Assistant](homeassistant)

## Asset Management
- [Domainmod](domainmod)
- [Snipe-IT](snipe-it)

## Backups
- [Duplicati](duplicati)
- [Duplicacy](duplicacy)

## Wiki & Knowledge Base
- [Bookstack](bookstack)
- [Answer](answer)
- [Wiki.js](wikijs)
- [Obsidian-Remote](obsidian-remote)

## Finance
- [TRSync](trsync)
- [Money-Balancer](money-balancer)
- [Firefly III](firefly-iii)
