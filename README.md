<div align="center" width="100%">
    <h2>Awesome Docker Compose Examples</h2>
    <p>Various Docker Compose examples of selfhosted FOSS and proprietary projects.</p>
    <a target="_blank" href="https://github.com/docker/compose"><img src="https://badgen.net/badge/icon/docker%20compose?icon=docker&label" /></a>
    <a target="_blank" href="https://www.reddit.com/r/selfhosted"><img src="https://badgen.net/badge/icon/r%2fselfhosted?icon=reddit&label&color=red" /></a><p>
    <a target="_blank" href="#"><img src="http://ForTheBadge.com/images/badges/makes-people-smile.svg" /></a><br>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/stargazers"><img src="https://img.shields.io/github/stars/Haxxnet/Compose-Examples.svg?style=social&label=Star" /></a>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/network/members"><img src="https://img.shields.io/github/forks/Haxxnet/Compose-Examples.svg?style=social&label=Fork" /></a>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/watchers"><img src="https://img.shields.io/github/watchers/Haxxnet/Compose-Examples.svg?style=social&label=Watch" /></a><p>
       <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/tree/main/examples"><img src="https://img.shields.io/github/directory-file-count/Haxxnet/Compose-Examples/examples?label=Compose%20Examples&style=for-the-badge.svg" /></a><br>
    <a target="_blank" href="https://github.com/l4rm4nd"><img src="https://img.shields.io/badge/maintainer-LRVT-orange" /></a>
    <a target="_blank" href="https://GitHub.com/Haxxnet/Compose-Examples/graphs/contributors/"><img src="https://img.shields.io/github/contributors/Haxxnet/Compose-Examples.svg" /></a>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/actions"><img src="https://github.com/Haxxnet/Compose-Examples/actions/workflows/validator.yml/badge.svg" /></a><br>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/issues/new/choose"><img src="https://img.shields.io/badge/PRs+Issues-welcome-brightgreen.svg?style=flat-square" /></a>
    <a target="_blank" href="https://GitHub.com/Haxxnet/Compose-Examples/commits/"><img src="https://img.shields.io/github/last-commit/Haxxnet/Compose-Examples.svg" /></a>
    <a target="_blank" href="https://GitHub.com/Haxxnet/Compose-Examples/issues/"><img src="https://img.shields.io/github/issues/Haxxnet/Compose-Examples.svg" /></a>
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/issues?q=is%3Aissue+is%3Aclosed"><img src="https://img.shields.io/github/issues-closed/Haxxnet/Compose-Examples.svg" /></a>
</div>

## ✨ Requirements
- Docker Compose

## 🎓 Usage
- Volume bind mounts are assumed to be located at `/mnt/docker-volumes/<container-name>/`. You can adjust the path via the global env variable `DOCKER_VOLUME_STORAGE` to your liking though. The compose examples will fall back to `/mnt/docker-volumes/<container-name>/` if the env variable is not set on your Docker server.
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
- [Homepage](examples/homepage) - A highly customizable homepage (or startpage / application dashboard) with Docker and service API integrations.
- [Homer](examples/homer) - A dead simple static homepage to expose your server services, with an easy yaml configuration and connectivity check.
- [Dashy](examples/dashy) - Feature-rich homepage for your homelab, with easy YAML configuration.
- [Homarr](examples/homarr) - A sleek, modern dashboard that puts all of your apps and services at your fingertips.
- [Flame](examples/flame) - Flame is self-hosted startpage for your server. Easily manage your apps and bookmarks with built-in editors.
- [Heimdall](examples/heimdall) - Heimdall is an elegant solution to organise all your web applications.

### Password Management
- [Vaultwarden](examples/vaultwarden) - Lightweight Bitwarden server API implementation written in Rust. Unlocks paid Bitwarden features such as 2FA.
- [Bitwarden Unified](examples/bitwarden-unified) - Official Bitwarden deployment option (beta) targeting selfhosters by providing a resource-efficient, single Docker image with multiple database support.
- [Passbolt CE](examples/passbolt) - Passbolt CE open source password manager for teams based on GPG.

### Reverse Proxies
- [Traefik](examples/traefik) - Traefik is a modern HTTP reverse proxy and load balancer made to deploy microservices with ease. It supports several backends (Docker, Swarm, Mesos/Marathon, …) to manage its configuration automatically and dynamically.
- [Nginx Proxy Manager](examples/nginx-proxy-manager) - Nginx Proxy Manager is an easy way to accomplish reverse proxying hosts with SSL termination.
- [Caddy](examples/caddy) - The Caddy web server is an extensible, cross-platform, open-source web server written in Go. Caddy obtains and renews TLS certificates for your sites automatically.

### Virtual Private Network (VPN)
- [wg-easy](examples/wg-easy) - The easiest way to install & manage WireGuard on any Linux host. All-in-one deployment of a WireGuard VPN network service + web management UI.
- [WireGuard](examples/wireguard) - WireGuard by Linuxserver.io is an extremely simple yet fast and modern VPN that utilizes state-of-the-art cryptography.
- [IPSec VPN Server](examples/ipsec-vpn-server) - Docker image to run an IPsec VPN server, with IPsec/L2TP, Cisco IPsec and IKEv2.
- ~~[Netbird](https://github.com/netbirdio/netbird)~~ - Quickly connect your computers, servers, cloud instances, and IoT devices into a secure private network. No configuration required.
- ~~[Firezone](https://github.com/firezone/firezone)~~ - Self-hosted secure remote access gateway that supports the WireGuard protocol. It offers a Web GUI, 1-line install script, multi-factor auth (MFA), and SSO.

### Domain Name Service (DNS)
- [AdGuard Home](examples/adguard-home) - AdGuard Home is a network-wide software for blocking ads and tracking.
- [AdGuard Home Sync](examples/adguard-home-sync) - Synchronize AdGuardHome config to replica instances.
- [Technitium DNS](examples/technitium-dns) - An open source authoritative as well as recursive DNS server that can be used for self hosting a DNS server for privacy & security.
- [Pihole](examples/pihole) - Pi-hole is a Linux network-level advertisement and Internet tracker blocking application which acts as a DNS sinkhole and optionally a DHCP server, intended for use on a private network.
- [Cloudflare DDNS](examples/cloudflare-ddns) - Dynamic DNS (DDNS) is a service that keeps the DNS updated with a web property's correct IP address, even if that IP address is constantly being updated.

### Repository Management, Coding and Automation
- [Gitea](examples/gitea) - Community managed fork of Gogs, lightweight code hosting solution.
- [Drone](examples/drone) - Drone is a continuous delivery system built on container technology. Drone uses a simple YAML build file, to define and execute build pipelines inside Docker containers.
- [Gitlab Community](examples/gitlab-ce) -  Self Hosted Git repository management, code reviews, issue tracking, activity feeds and wikis.
- [Code-Server](examples/code-server) - VS Code in the browser, hosted on a remote server.
- [Onedev](examples/onedev) - Self-hosted Git Server with CI/CD and Kanban.
- [n8n](examples/n8n) - Free and source-available fair-code licensed workflow automation tool. Easily automate tasks across different services.

### Monitoring
- [Watchtower](examples/watchtower) - A container-based solution for automating Docker container base image updates.
- [Portainer](examples/portainer-ee) - Portainer is a lightweight management UI which allows you to easily manage your different Docker environments (Docker hosts or Swarm clusters).
- [Uptimekuma](examples/uptimekuma) - Uptime Kuma is an easy-to-use self-hosted monitoring tool.
- [Changedetection](examples/changedetection) - Self-hosted tool for staying up-to-date with web-site content changes.
- [Grafana+Loki+Promtail+InfluxDB+Telegraf](examples/grafana-monitoring) - Grafana is the open source analytics & monitoring solution for every database. Combined with other open-source tools like Loki, Promtail, InfluxDB and Telegraf, monitoring data can be aggregated, normalized, filtered, parsed and finally visualized within a web dashboard.
- [Speedtest-Tracker](examples/speedtest-tracker) - Continuously track your internet speed.
- [Openspeedtest](examples/openspeedtest) - A free and open-source HTML5 network performance estimation tool written in vanilla JavaScript and only uses built-in web APIs like XHR, HTML, CSS, JS and SVG.
- [Goaccess](examples/nginx-proxy-manager-goaccess) - Real-time web log analyzer and interactive viewer that visualizes various logs of popular reverse proxies such as Nginx, Nginx Proxy Manager and Traefik.
- [WatchYourLAN](examples/watchyourlan) - Lightweight network IP scanner with web GUI.
- [Network-Multitool](examples/network-multitool) - Multi-arch multitool for container network troubleshooting.
- [Home Assistant](examples/homeassistant) - Open source home automation that puts local control and privacy first. Powered by a worldwide community of tinkerers and DIY enthusiasts. Perfect to run on a Raspberry Pi or a local server.
- [dockcheck-web](examples/dockcheck-web) - A webpage showing available image updates for your running containers.

### Recipe Managers
- [Tandoor](examples/tandoor) - Django application to manage, tag and search recipes using either built-in models or external storage providers hosting PDFs, Images or other files.
- [Mealie](examples/mealie) - Material design inspired recipe manager with category and tag management, shopping-lists, meal-planner, and site customizations. Mealie is focused on simple user interactions to keep the whole family using the app.

### Media Management (Photos, Music, Videos)
- [Immich](examples/immich) - Self-hosted photo and video backup solution directly from your mobile phone. Alternative to Google Photos.
- [Photoprism](examples/photoprism) - Personal photo management powered by Go and Google TensorFlow. Browse, organize, and share your personal photo collection, using the latest technologies to automatically tag and find pictures.
- [Stash](examples/stash) - Stash is a self-hosted webapp written in Go which organizes and serves your porn.
- [Raveberry](examples/raveberry) - A multi-user music server with a focus on participation.
- [Deemix](examples/deemix) - deemix is a barebone deezer downloader library built from the ashes of Deezloader Remix.
- [MeTube](examples/metube) - Web GUI for youtube-dl (using the yt-dlp fork) with playlist support. Allows you to download videos and audio only from YouTube and dozens of other sites.
- [Syncthing](examples/syncthing) - Syncthing is a continuous file synchronization program. It synchronizes files between two or more computers.

### Document Management Systems (DMS)
- [Paperless NGX](examples/paperless-ngx) - A community-supported supercharged version of paperless: scan, index and archive all your physical documents.
- [Papermerge](examples/papermerge) - Free and open source document management system with OCR designed for scanned documents, digital archives, pdf, tiff, jpeg.

### Pastebins
- [PrivateBin](examples/privatebin) - PrivateBin is a minimalist, opensource online pastebin/discussion board where the server has zero knowledge of hosted data.
- [Hemmelig](examples/hemmelig) - Keep your sensitive information out of chat logs, emails, and more with encrypted secrets. Free encrypted secret sharing for everyone!

### File Sharing / Storage
- [Nextcloud](examples/nextcloud) - Access and share your files, calendars, contacts, mail and more from any device, on your terms.
- [Seafile](examples/seafile) - File hosting and sharing solution primary for teams and organizations.
- [SFTPGo](examples/sftpgo) - Fully featured and highly configurable SFTP server with optional HTTP/S, FTP/S and WebDAV support - S3, Google Cloud Storage, Azure Blob.
- [Gokapi](examples/gokapi) - Lightweight selfhosted Firefox Send alternative without public upload. AWS S3 supported.
- [Projectsend](examples/projectsend) - ProjectSend is a free, open source software that lets you share files with your clients, focused on ease of use and privacy. It supports clients groups, system users roles, statistics, multiple languages, detailed logs and much more!
- [Pwndrop](examples/pwndrop) - pwndrop is a self-deployable file hosting service for sending out red teaming payloads or securely sharing your private files over HTTP and WebDAV.
- [Droppy](examples/droppy) (deprecated) - droppy is a self-hosted file storage server with a web interface and capabilities to edit files and view media directly in the browser. It is particularly well-suited to be run on low-end hardware like the Raspberry Pi.
- [PairDrop](examples/pairdrop) - PairDrop is a sublime alternative to AirDrop that works on all platforms. Send images, documents or text via peer to peer connection to devices in the same local network/Wi-Fi or to paired devices.
- [MinIO](examples/minio) - MinIO is an object storage server, compatible with Amazon S3 cloud storage service, mainly used for storing unstructured data (such as photos, videos, log files, etc.).

### Publishing, Writing, Blogging, Hosting
- [Ghost](examples/ghost) - Ghost is a free and open source blogging platform written in JavaScript and distributed under the MIT License, designed to simplify the process of online publishing for individual bloggers as well as online publications.
- [WordPress](examples/wordpress) - WordPress is a free and open-source content management system written in hypertext preprocessor language and paired with a MySQL or MariaDB database with supported HTTPS.
- [Nginx + PHP](examples/nginx-php) - Nginx is a web server that can also be used as a reverse proxy, load balancer, mail proxy and HTTP cache. Combined with PHP, a general-purpose scripting language geared toward web development, server-side functions can be implemented for the webs.
- [Overleaf](examples/overleaf) - Overleaf is a collaborative cloud-based LaTeX editor used for writing, editing and publishing scientific documents.
- [Answer](examples/answer) - An open-source knowledge-based community software. You can use it quickly to build Q&A community for your products, customers, teams, and more.
- [Obsidian-Gitsync-Perlite](https://github.com/l4rm4nd/Obsidian-Gitsync-Perlite) - Continuously sync Obsidian markdown notes from GitHub and publish it for the webs.
- [Obsidian-Remote](examples/obsidian-remote) - This docker image allows you to run obsidian in docker as a container and access it via your web browser.

### Analytics
- [Matomo](examples/matomo) - Matomo is the leading Free/Libre open analytics platform.
- [Plausible](examples/plausible) - Simple, open-source, lightweight (< 1 KB) and privacy-friendly web analytics alternative to Google Analytics.

### Security & Privacy
- [Nessus](examples/nessus) - Nessus is a proprietary vulnerability scanner developed by Tenable, Inc.
- [Greenbone](examples/greenbone) - Greenbone is the world's most trusted provider of open source vulnerability management.
- [SonarQube](examples/sonarqube) - SonarQube is an open-source platform developed by SonarSource for continuous inspection of code quality to perform automatic reviews with static analysis of code to detect bugs and code smells on 29 programming languages.
- [Fail2ban](examples/fail2ban) - Fail2ban is an intrusion prevention software framework. Written in the Python programming language, it is designed to prevent against brute-force attacks.
- [Tor-Browser](examples/tor-browser) - Running a Tor browser instance on any headless server.
- [Firefox](examples/firefox) - Firefox by linuxserver.io allows you to run the popular Firefox web broser on a remote server.
- [Libreddit](examples/libreddit) - Libreddit is a portmanteau of "libre" (meaning freedom) and "Reddit". It is a private front-end like Invidious but for Reddit. Browse the coldest takes of r/unpopularopinion without being tracked.

### Internet of Things / Smart Home / IT Automation
- [Home Assistant](examples/homeassistant) - Open source home automation that puts local control and privacy first. Powered by a worldwide community of tinkerers and DIY enthusiasts. Perfect to run on a Raspberry Pi or a local server.
- [UpSnap](examples/upsnap) - A simple wake on lan app written with SvelteKit, Go, PocketBase and nmap.

### Asset Management
- [Domainmod](examples/domainmod) - DomainMOD is an open source application used to manage your domains and other internet assets in a central location.
- [Snipe-IT](examples/snipe-it) - Snipe-IT is a free, open source IT asset management system written in PHP.

### Backups & Syncing
- [Duplicati](examples/duplicati) - Duplicati is a backup client that securely stores encrypted, incremental, compressed remote backups of local files on cloud storage services and remote file servers.
- [Duplicacy](examples/duplicacy) - A lock-free deduplication cloud backup tool.
- [Syncthing](examples/syncthing) - Syncthing is a continuous file synchronization program. It synchronizes files between two or more computers.

### Wiki & Knowledge Base
- [Bookstack](examples/bookstack) - BookStack is a free and open-source wiki software aimed for a simple, self-hosted, and easy-to-use platform.
- [Wiki.js](examples/wikijs) - Wiki.js is an open source project that has been made possible due to the generous contributions by community backers.
- [Answer](examples/answer) - An open-source knowledge-based community software. You can use it quickly to build Q&A community for your products, customers, teams, and more.
- [Obsidian-Remote](examples/obsidian-remote) - This docker image allows you to run obsidian in docker as a container and access it via your web browser.
- [Obsidian-Gitsync-Perlite](https://github.com/l4rm4nd/Obsidian-Gitsync-Perlite) - Continuously sync Obsidian markdown notes from GitHub and publish it for the webs.

### Finance
- [TRSync](examples/trsync) - Django web frontend for pytr to download all Trade Republic depot data.
- [Money-Balancer](examples/money-balancer) - A simple application for managing debt with your friends!
- [Firefly III](examples/firefly-iii) - A self-hosted manager for your personal finances.

### Communication and Social
- [Mirotalk P2P](examples/mirotalk) - Simple, Secure, Fast Real-Time Video Conferences Up to 4k and 60fps, compatible with all browsers and platforms.
- [Rocket.Chat](examples/rocketchat) - Rocket.Chat is an open-source fully customizable communications platform developed in JavaScript for organizations with high standards of data protection.
- [Answer](examples/answer) - An open-source knowledge-based community software. You can use it quickly to build Q&A community for your products, customers, teams, and more.
- [Excalidraw](examples/excalidraw) - Excalidraw is a virtual collaborative whiteboard tool that lets you easily sketch diagrams that have a hand-drawn feel to them.

### Project Management
- [JetBrains YouTrack](examples/youtrack) - YouTrack is a proprietary, commercial browser-based bug tracker, issue tracking system and project management software developed by JetBrains.

## Star History
[![Star History Chart](https://api.star-history.com/svg?repos=Haxxnet/Compose-Examples&type=Date)](https://star-history.com/#Haxxnet/Compose-Examples&Date)
