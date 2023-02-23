<div align="center" width="100%">
    <h2>Awesome Docker Compose Examples</h2>
    <p>Various Docker Compose examples of selfhosted FOSS projects.</p>
    <a target="_blank" href="https://github.com/docker/compose"><img src="https://badgen.net/badge/icon/docker%20compose?icon=docker&label" /></a>
    <a target="_blank" href="https://www.reddit.com/r/selfhosted"><img src="https://badgen.net/badge/icon/r%2fselfhosted?icon=reddit&label&color=red" /></a><p>
    <a target="_blank" href="#"><img src="http://ForTheBadge.com/images/badges/makes-people-smile.svg" /></a><br>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/stargazers"><img src="https://img.shields.io/github/stars/Haxxnet/Compose-Examples.svg?style=social&label=Star" /></a>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/network/members"><img src="https://img.shields.io/github/forks/Haxxnet/Compose-Examples.svg?style=social&label=Fork" /></a>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/watchers"><img src="https://img.shields.io/github/watchers/Haxxnet/Compose-Examples.svg?style=social&label=Watch" /></a><p>
    <a target="_blank" href="https://github.com/l4rm4nd"><img src="https://img.shields.io/badge/maintainer-LRVT-orange" /></a>
    <a target="_blank" href="https://GitHub.com/Haxxnet/Compose-Examples/graphs/contributors/"><img src="https://img.shields.io/github/contributors/Haxxnet/Compose-Examples.svg" /></a><br>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/issues/new/choose"><img src="https://img.shields.io/badge/PRs+Issues-welcome-brightgreen.svg?style=flat-square" /></a>
    <a target="_blank" href="https://GitHub.com/Haxxnet/Compose-Examples/commits/"><img src="https://img.shields.io/github/last-commit/Haxxnet/Compose-Examples.svg" /></a>
    <a target="_blank" href="https://GitHub.com/Haxxnet/Compose-Examples/issues/"><img src="https://img.shields.io/github/issues/Haxxnet/Compose-Examples.svg" /></a>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/issues?q=is%3Aissue+is%3Aclosed"><img src="https://img.shields.io/github/issues-closed/Haxxnet/Compose-Examples.svg" /></a>
    
</div>

## ✨ Requirements
- Docker Compose

## 🎓 Usage
- Volume bind mounts are assumed to be located at `/mnt/docker-volumes/<container-name>/`
- Volume permissions (UID:GUID) must be set correctly by yourself. Usually `1000:1000` - otherwise read the notes!
- Docker networks are not pre-defined. Adjust to your preference and network/proxy setup.
- Example config files are usually provided but not yet located in the correct volume bind mount paths. Adjust!
- Example credentials should be always adjusted due to security reasons. Read the comments!

Otherwise, it should be a matter of:
````
git clone https://github.com/Haxxnet/Compose-Examples && cd Compose-Examples
cd <container-of-interest>

# read the notes, comments and adjust compose + volumes + configs
docker compose up
````
## 🐳 Project List

### Dashboards
- [Homepage](homepage)
- [Homer](homer)
- [Dashy](dashy)
- [Homarr](homarr)
- [Flame](flame)
- [Heimdall](heimdall)

### Password Management
- [Vaultwarden](vaultwarden)
- [Bitwarden Unified](bitwarden-unified)

### Reverse Proxies
- [Traefik](traefik)
- [Nginx Proxy Manager](nginx-proxy-manager)
- [Caddy](caddy)

### Virtual Private Network (VPN)
- [wg-easy](wg-easy)
- [Wireguard](wireguard)
- ~~[Netbird](https://github.com/netbirdio/netbird)~~
- ~~[Firezone](https://github.com/firezone/firezone)~~

### Domain Name Service (DNS)
- [Adguard Home](adguard-home)
- [Adguard Home Sync](adguard-home-sync)
- [Technitium DNS](technitium-dns)
- [Pihole](pihole)
- [Cloudflare DDNS](cloudflare-ddns)

### Repository Management & Coding
- [Gitea](gitea)
- [Drone](drone)
- [Gitlab Community](gitlab-ce)
- [Code Server](code-server)
- [Obsidian-Remote](obsidian-remote)
- [Onedev](onedev)

### Monitoring
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

### Recipe Managers
- [Tandoor](tandoor)
- [Mealie](mealie)

### Media Management
- [Immich](immich)
- [Photoprism](photoprism)
- [Deemix](deemix)
- [Papermerge](papermerge)
- [Paperless NGX](paperless-ngx)

### Pastebins
- [PrivateBin](privatebin)
- [Hemmelig](hemmelig)

### File Sharing
- [Nextcloud](nextcloud)
- [Seafile](seafile)
- [SFTPGo](sftpgo)
- [Gokapi](gokapi)
- [Projectsend](projectsend)
- [Pwndrop](pwndrop)
- [Droppy](droppy)

### Publishing, Writing, Blogging, Hosting
- [Ghost](ghost)
- [WordPress](wordpress)
- [Nginx + PHP](nginx-php)
- [Overleaf](overleaf)
- [Answer](answer)

### Analytics
- [Matomo](matomo)
- [Plausible](plausible)

### Security & Privacy
- [Nessus](nessus)
- [Greenbone](greenbone)
- [SonarQube](sonarqube)
- [Fail2ban](fail2ban)
- [Tor-Browser](tor-browser)

### Internet of Things / Smart Home
- [Home Assistant](homeassistant)

### Asset Management
- [Domainmod](domainmod)
- [Snipe-IT](snipe-it)

### Backups
- [Duplicati](duplicati)
- [Duplicacy](duplicacy)

### Wiki & Knowledge Base
- [Bookstack](bookstack)
- [Wiki.js](wikijs)
- [Answer](answer)
- [Obsidian-Remote](obsidian-remote)

### Finance
- [TRSync](trsync)
- [Money-Balancer](money-balancer)
- [Firefly III](firefly-iii)

### Communication and Social
- [Mirotalk WebRTC](mirotalk)
- [Rocket.Chat](rocketchat)
- [Answer](answer)
- [Excalidraw](excalidraw)

### Project Management
- [JetBrains YouTrack](youtrack)


## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=Haxxnet/Compose-Examples&type=Date)](https://star-history.com/#Haxxnet/Compose-Examples&Date)
