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
git clone https://github.com/Haxxnet/Compose-Examples && cd Compose-Examples/examples/
cd <container-of-interest>

# read the notes, comments and adjust compose + volumes + configs
docker compose up
````
## 🐳 Project List

### Dashboards
- [Homepage](examples/homepage)
- [Homer](examples/homer)
- [Dashy](examples/dashy)
- [Homarr](examples/homarr)
- [Flame](examples/flame)
- [Heimdall](examples/heimdall)

### Password Management
- [Vaultwarden](examples/vaultwarden)
- [Bitwarden Unified](examples/bitwarden-unified)

### Reverse Proxies
- [Traefik](examples/traefik)
- [Nginx Proxy Manager](examples/nginx-proxy-manager)
- [Caddy](examples/caddy)

### Virtual Private Network (VPN)
- [wg-easy](examples/wg-easy)
- [Wireguard](examples/wireguard)
- ~~[Netbird](examples/https://github.com/netbirdio/netbird)~~
- ~~[Firezone](examples/https://github.com/firezone/firezone)~~

### Domain Name Service (DNS)
- [Adguard Home](examples/adguard-home)
- [Adguard Home Sync](examples/adguard-home-sync)
- [Technitium DNS](examples/technitium-dns)
- [Pihole](examples/pihole)
- [Cloudflare DDNS](examples/cloudflare-ddns)

### Repository Management, Coding and Automation
- [Gitea](examples/gitea)
- [Drone](examples/drone)
- [Gitlab Community](examples/gitlab-ce)
- [Code Server](examples/code-server)
- [Obsidian-Remote](examples/obsidian-remote)
- [Onedev](examples/onedev)
- [n8n](examples/n8n)

### Monitoring
- [Watchtower](examples/watchtower)
- [Portainer Enterprise](examples/portainer-ee)
- [Uptimekuma](examples/uptimekuma)
- [Changedetection](examples/changedetection)
- [Grafana Stack](examples/grafana-monitoring)
- [Speedtest-Tracker](examples/speedtest-tracker)
- [Openspeedtest](examples/openspeedtest)
- [Goaccess](examples/nginx-proxy-manager-goaccess)
- [WatchYourLAN](examples/watchyourlan)
- [Network-Multitool](examples/network-multitool)
- [Home Assistant](examples/homeassistant)

### Recipe Managers
- [Tandoor](examples/tandoor)
- [Mealie](examples/mealie)

### Media Management
- [Immich](examples/immich)
- [Photoprism](examples/photoprism)
- [Deemix](examples/deemix)
- [Papermerge](examples/papermerge)
- [Paperless NGX](examples/paperless-ngx)
- [Stash](examples/stash)

### Pastebins
- [PrivateBin](examples/privatebin)
- [Hemmelig](examples/hemmelig)

### File Sharing
- [Nextcloud](examples/nextcloud)
- [Seafile](examples/seafile)
- [SFTPGo](examples/sftpgo)
- [Gokapi](examples/gokapi)
- [Projectsend](examples/projectsend)
- [Pwndrop](examples/pwndrop)
- [Droppy](examples/droppy)

### Publishing, Writing, Blogging, Hosting
- [Ghost](examples/ghost)
- [WordPress](examples/wordpress)
- [Nginx + PHP](examples/nginx-php)
- [Overleaf](examples/overleaf)
- [Answer](examples/answer)

### Analytics
- [Matomo](examples/matomo)
- [Plausible](examples/plausible)

### Security & Privacy
- [Nessus](examples/nessus)
- [Greenbone](examples/greenbone)
- [SonarQube](examples/sonarqube)
- [Fail2ban](examples/fail2ban)
- [Tor-Browser](examples/tor-browser)

### Internet of Things / Smart Home
- [Home Assistant](examples/homeassistant)

### Asset Management
- [Domainmod](examples/domainmod)
- [Snipe-IT](examples/snipe-it)

### Backups
- [Duplicati](examples/duplicati)
- [Duplicacy](examples/duplicacy)

### Wiki & Knowledge Base
- [Bookstack](examples/bookstack)
- [Wiki.js](examples/wikijs)
- [Answer](examples/answer)
- [Obsidian-Remote](examples/obsidian-remote)

### Finance
- [TRSync](examples/trsync)
- [Money-Balancer](examples/money-balancer)
- [Firefly III](examples/firefly-iii)

### Communication and Social
- [Mirotalk WebRTC](examples/mirotalk)
- [Rocket.Chat](examples/rocketchat)
- [Answer](examples/answer)
- [Excalidraw](examples/excalidraw)

### Project Management
- [JetBrains YouTrack](examples/youtrack)

## Star History
[![Star History Chart](https://api.star-history.com/svg?repos=Haxxnet/Compose-Examples&type=Date)](https://star-history.com/#Haxxnet/Compose-Examples&Date)
