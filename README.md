[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![GitLab last commit](https://img.shields.io/github/last-commit/Haxxnet/Compose-Examples.svg)](https://GitHub.com/Haxxnet/Compose-Examples/commits/)<br>
[![GitHub issues](https://img.shields.io/github/issues/Haxxnet/Compose-Examples.svg)](https://GitHub.com/Haxxnet/Compose-Examples/issues/)
[![GitHub issues-closed](https://img.shields.io/github/issues-closed/Haxxnet/Compose-Examples.svg)](https://GitHub.com/Naereen/Haxxnet/Compose-Examples/issues?q=is%3Aissue+is%3Aclosed)

[![Docker](https://badgen.net/badge/icon/docker%20compose?icon=docker&label)](https://https://docker.com/)
[![Reddit](https://badgen.net/badge/icon/r%2fselfhosted?icon=reddit&label&color=red)](https://www.reddit.com/r/selfhosted)<br>
[![ForTheBadge makes-people-smile](http://ForTheBadge.com/images/badges/makes-people-smile.svg)](http://ForTheBadge.com)<br>
[![GitHub stars](https://img.shields.io/github/stars/Haxxnet/Compose-Examples.svg?style=social&label=Star&maxAge=2592000)](https://GitHub.com/Haxxnet/Compose-Examples/stargazers/)
[![GitHub forks](https://img.shields.io/github/forks/Haxxnet/Compose-Examples.svg?style=social&label=Fork&maxAge=2592000)](https://GitHub.com/Haxxnet/Compose-Examples/network/)
[![GitHub watchers](https://img.shields.io/github/watchers/Haxxnet/Compose-Examples.svg?style=social&label=Watch&maxAge=2592000)](https://GitHub.com/Haxxnet/Compose-Examples/watchers/)

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
- [Wireguard](wireguard)
- ~~[Netbird](https://github.com/netbirdio/netbird)~~
- ~~[Firezone](https://github.com/firezone/firezone)~~

## Domain Name Service (DNS)
- [Adguard Home](adguard-home)
- [Adguard Home Sync](adguard-home-sync)
- [Technitium DNS](technitium-dns)
- [Pihole](pihole)
- [Cloudflare DDNS](cloudflare-ddns)

## Repository Management & Coding
- [Gitea](gitea)
- [Drone](drone)
- [Gitlab Community](gitlab-ce)
- [Code Server](code-server)
- [Obsidian-Remote](obsidian-remote)
- ~~[Onedev](https://github.com/theonedev/onedev)~~

## Monitoring
- [Watchtower](watchtower)
- [Portainer Enterprise](portainer-ee)
- [Uptimekuma](uptimekuma)
- [Changedetection](changedetection)
- [Grafana Stack](grafana-monitoring)
- [Speedtest-Tracker](speedtest-tracker)
- [Openspeedtest](openspeedtest)
- [Goaccess](nginx-proxy-manager-goaccess)
- [WatchYourLAN](watchyourlan)
- [Network-Multitool](network-multitool)
- [Home Assistant](homeassistant)

## Recipe Managers
- [Tandoor](tandoor)
- [Mealie](mealie)

## Media Management
- [Immich](immich)
- [Photoprism](photoprism)
- [Deemix](deemix)
- [Papermerge](papermerge)
- [Paperless NGX](paperless-ngx)

## Pastebins
- [PrivateBin](privatebin)
- [Hemmelig](hemmelig)

## File Sharing
- [Nextcloud](nextcloud)
- [Seafile](seafile)
- [SFTPGo](sftpgo)
- [Gokapi](gokapi)
- [Projectsend](projectsend)
- [Pwndrop](pwndrop)
- [Droppy](droppy)

## Publishing, Writing, Blogging, Hosting
- [Ghost](ghost)
- [WordPress](wordpress)
- [Nginx + PHP](nginx-php)
- [Overleaf](overleaf)
- [Answer](answer)

## Analytics
- [Matomo](matomo)
- [Plausible](plausible)

## Security & Privacy
- [Nessus](nessus)
- [Greenbone](greenbone)
- [SonarQube](sonarqube)
- [Fail2ban](fail2ban)
- [Tor-Browser](tor-browser)

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
- [Wiki.js](wikijs)
- [Answer](answer)
- [Obsidian-Remote](obsidian-remote)

## Finance
- [TRSync](trsync)
- [Money-Balancer](money-balancer)
- [Firefly III](firefly-iii)

## Communication and Social
- [Mirotalk WebRTC](mirotalk)
- [Rocket.Chat](rocketchat)
- [Answer](answer)
- [Excalidraw](excalidraw)

## Project Management
- [JetBrains YouTrack](youtrack)
