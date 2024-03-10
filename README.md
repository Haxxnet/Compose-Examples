<div align="center" width="100%">
    <h1>Awesome Docker Compose Examples</h1>
    <p>Various Docker Compose examples of selfhosted FOSS and proprietary projects.</p>
    <a target="_blank" href="https://github.com/docker/compose"><img src="https://badgen.net/badge/icon/docker%20compose?icon=docker&label" /></a>
    <a target="_blank" href="https://www.reddit.com/r/selfhosted"><img src="https://badgen.net/badge/icon/r%2fselfhosted?icon=reddit&label&color=red" /></a><p>
    <!--<a target="_blank" href="#"><img src="https://ForTheBadge.com/images/badges/makes-people-smile.svg" /></a><br>-->
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
    <a target="_blank" href="https://github.com/Haxxnet/Compose-Examples/issues?q=is%3Aissue+is%3Aclosed"><img src="https://img.shields.io/github/issues-closed/Haxxnet/Compose-Examples.svg" /></a><p>
    <a href="https://www.buymeacoffee.com/LRVT" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>
</div>

## ✨ Requirements
- Docker Compose

## 🎓 Usage
- Volume bind mounts are assumed to be located at `/mnt/docker-volumes/<container-name>/`. You can adjust the path via the global env variable `DOCKER_VOLUME_STORAGE` to your liking though. The compose examples will fall back to `/mnt/docker-volumes/<container-name>/` if the env variable is not set on your Docker server.
- Volume permissions (UID:GUID) must be set correctly by yourself. Usually `1000:1000` - otherwise read the notes!
- Docker networks are not pre-defined. Adjust to your preference and network/proxy setup.
- Example config files are usually provided but not yet located in the correct volume bind mount paths. Adjust!
- Example credentials should always be adjusted due to security reasons. May put them in a separate `.env` file or platform for secrets management.

Otherwise, it should be a matter of:
````
git clone https://github.com/Haxxnet/Compose-Examples && cd Compose-Examples
cd <container-of-interest>

# read the notes, comments and adjust compose + volumes + configs
docker compose up
````
> [!TIP]  
> You can find an online web version of this GitHub repository [here](https://haxxnet.github.io/Compose-Examples/).

> [!CAUTION]
> The samples are intended for local development environments such as project setups, tinkering with software stacks, etc. These samples may be deployed in production environments or exposed to the Internet but please adhere to general hardening and security guidelines. Adjust all default credentials, use a separate `.env` file or platform for secret management, implement a backup process and have a tested disaster recovery plan. Use a reverse proxy to stream-line your web service exposure and provide an encrypted HTTPS communication channel with trusted SSL certificates.

## 🐳 Project List

### Table of Contents (ToC)

- [Analytics](#analytics)
- [Archiving and Digital Preservation (DP)](#archiving-and-digital-preservation-dp)
- [Asset Management](#asset-management)
- [Audio and Video Management](#audio-and-video-management)
- [Automation and Monitoring](#automation-and-monitoring)
- [Backups](#backups)
- [Blogging Platforms and Homepages](#blogging-platforms-and-homepages)
- [Communication - Social Networks, Forums and Video Conferencing](#communication---social-networks-forums-and-video-conferencing)
- [Document Management](#document-management)
- [Domain Name Service (DNS)](#domain-name-service-dns)
- [E-commerce](#e-commerce)
- [File Transfer & Synchronization](#file-transfer--synchronization)
- [Games and Control Panels](#games-and-control-servers)
- [Genealogy](#genealogy)
- [Identity Management - Single Sign-On (SSO) & LDAP](#identity-management---single-sign-on-sso--ldap)
- [Miscellaneous](#miscellaneous)
- [Money, Budgeting & Management](#money-budgeting--management)
- [Note-taking & Editors](#note-taking--editors)
- [Password Managers](#password-managers)
- [Pastebins](#pastebins)
- [Personal Dashboards](#personal-dashboards)
- [Photo and Video Galleries](#photo-and-video-galleries)
- [Proxy](#proxy)
- [Recipe Management](#recipe-management)
- [Request Bins](#request-bins)
- [Security & Privacy](#security--privacy)
- [Software Development - Project Management, DevOps](#software-development---project-management-devops)
- [URL Shorteners](#url-shorteners)
- [Virtual Private Network (VPN) & Remote Access](#virtual-private-network-vpn--remote-access)
- [Wikis & Knowledge Base](#wikis--knowledge-base)

### Personal Dashboards

**[`^        back to top        ^`](#-project-list)**

Dashboards for accessing information and applications.

- [Homepage](examples/homepage) - A highly customizable homepage (or startpage / application dashboard) with Docker and service API integrations.
- [Homer](examples/homer) - A dead simple static homepage to expose your server services, with an easy yaml configuration and connectivity check.
- [Dashy](examples/dashy) - Feature-rich homepage for your homelab, with easy YAML configuration.
- [Homarr](examples/homarr) - A sleek, modern dashboard that puts all of your apps and services at your fingertips.
- [Flame](examples/flame) - Flame is self-hosted startpage for your server. Easily manage your apps and bookmarks with built-in editors.
- [Heimdall](examples/heimdall) - Heimdall is an elegant solution to organise all your web applications.

### Password Managers

**[`^        back to top        ^`](#-project-list)**

A [password manager](https://en.wikipedia.org/wiki/Password_manager) allows users to store, generate, and manage their passwords for local applications and online services.

- [Vaultwarden](examples/vaultwarden) - Lightweight Bitwarden server API implementation written in Rust. Unlocks paid Bitwarden features such as 2FA.
- [Bitwarden Unified](examples/bitwarden-unified) - Official Bitwarden deployment option (beta) targeting selfhosters by providing a resource-efficient, single Docker image with multiple database support.
- [Passbolt CE](examples/passbolt) - Passbolt CE open source password manager for teams based on GPG.

### Proxy

**[`^        back to top        ^`](#-project-list)**

A [proxy](https://en.wikipedia.org/wiki/Proxy_server) is a server application that acts as an intermediary between a client requesting a resource and the server providing that resource.

- [Traefik](examples/traefik) - Traefik is a modern HTTP reverse proxy and load balancer made to deploy microservices with ease. It supports several backends (Docker, Swarm, Mesos/Marathon, …) to manage its configuration automatically and dynamically.
- [Nginx Proxy Manager](examples/nginx-proxy-manager) - Nginx Proxy Manager is an easy way to accomplish reverse proxying hosts with SSL termination.
- [Caddy](examples/caddy) - The Caddy web server is an extensible, cross-platform, open-source web server written in Go. Caddy obtains and renews TLS certificates for your sites automatically.
- ~~[oauth2-proxy](https://github.com/oauth2-proxy/oauth2-proxy)~~ - A reverse proxy that provides authentication with Google, Azure, OpenID Connect and many more identity providers.

### Identity Management - Single Sign-On (SSO) & LDAP

**[`^        back to top        ^`](#-project-list)**

[Single sign-on (SSO)](https://en.wikipedia.org/wiki/Single_sign-on) is an authentication scheme that allows a user to log in with a single ID to any of several related, yet independent, software systems.

- [Authelia](examples/authelia) - Authelia is an open-source authentication and authorization server providing two-factor authentication and single sign-on (SSO) for your applications via a web portal. It acts as a companion for reverse proxies by allowing, denying, or redirecting requests. Recommended to combine with [Traefik](examples/traefik).
- [Authentik](examples/authentik) - Authentik is an open-source Identity Provider focused on flexibility and versatility.
- [Keycloak](https://github.com/keycloak/keycloak-containers/tree/main/docker-compose-examples) - Keycloak is an open-source Identity and Access Management (IAM) solution for modern applications and services.
- [lldap](examples/lldap) - lldap is a lightweight authentication server that provides an opinionated, simplified LDAP interface for authentication. It integrates with many backends, from KeyCloak to Authelia to Nextcloud and more.

### Virtual Private Network (VPN) & Remote Access

**[`^        back to top        ^`](#-project-list)**

A [VPN](https://en.wikipedia.org/wiki/Virtual_private_network) is a mechanism for creating a secure connection between a computing device and a computer network, or between two networks, using an insecure communication medium such as the public Internet.

- [wg-easy](examples/wg-easy) - The easiest way to install & manage WireGuard on any Linux host. All-in-one deployment of a WireGuard VPN network service + web management UI.
- [WireGuard](examples/wireguard) - WireGuard by Linuxserver.io is an extremely simple yet fast and modern VPN that utilizes state-of-the-art cryptography.
- [IPSec VPN Server](examples/ipsec-vpn-server) - Docker image to run an IPsec VPN server, with IPsec/L2TP, Cisco IPsec and IKEv2.
- [Firezone](examples/firezone) - Self-hosted secure remote access gateway that supports the WireGuard protocol. It offers a Web GUI, 1-line install script, multi-factor auth (MFA), and SSO.
- ~~[Netbird](https://github.com/netbirdio/netbird)~~ - Quickly connect your computers, servers, cloud instances, and IoT devices into a secure private network. No configuration required.
- [Headscale](examples/headscale) - An open source, self-hosted implementation of the Tailscale control server.
- [Guacamole](examples/guacamole) - Guacamole is a clientless remote desktop gateway. It supports standard protocols like VNC, SSH and RDP.

### Domain Name Service (DNS)

**[`^        back to top        ^`](#-project-list)**

[DNS](https://en.wikipedia.org/wiki/Domain_Name_System) servers and management tools with advertisement blocking funtionality, primarily aimed at home or small networks.

- [AdGuard Home](examples/adguard-home) - AdGuard Home is a network-wide software for blocking ads and tracking.
- [AdGuard Home Sync](examples/adguard-home-sync) - Synchronize AdGuardHome config to replica instances.
- [Technitium DNS](examples/technitium-dns) - An open source authoritative as well as recursive DNS server that can be used for self hosting a DNS server for privacy & security.
- [Pihole](examples/pihole) - Pi-hole is a Linux network-level advertisement and Internet tracker blocking application which acts as a DNS sinkhole and optionally a DHCP server, intended for use on a private network.
- [Cloudflare DDNS](examples/cloudflare-ddns) - Dynamic DNS (DDNS) is a service that keeps the DNS updated with a web property's correct IP address, even if that IP address is constantly being updated.

### Software Development - Project Management, DevOps

**[`^        back to top        ^`](#-project-list)**

Tools and software for [software project management](https://en.wikipedia.org/wiki/Software_project_management).

- [JetBrains YouTrack](examples/jetbrains-youtrack) - YouTrack is a proprietary, commercial browser-based bug tracker, issue tracking system and project management software developed by JetBrains.
- [Leantime](examples/leantime) - Leantime is an open source project management system for small teams and startups written in PHP, Javascript using MySQL.
- [Gitea](examples/gitea) - Community managed fork of Gogs, lightweight code hosting solution.
- [Drone](examples/drone) - Drone is a continuous delivery system built on container technology. Drone uses a simple YAML build file, to define and execute build pipelines inside Docker containers.
- [Gitlab Community](examples/gitlab-ce) -  Self Hosted Git repository management, code reviews, issue tracking, activity feeds and wikis.
- [Code-Server](examples/code-server) - VS Code in the browser, hosted on a remote server.
- [Onedev](examples/onedev) - Self-hosted Git Server with CI/CD and Kanban.

### Automation and Monitoring

**[`^        back to top        ^`](#-project-list)**

[Automation](https://en.wikipedia.org/wiki/Automation) software designed to reduce human intervention in processes.

- [n8n](examples/n8n) - Free and source-available fair-code licensed workflow automation tool. Easily automate tasks across different services.
- [Home Assistant](examples/home-assistant) - Open source home automation that puts local control and privacy first. Powered by a worldwide community of tinkerers and DIY enthusiasts. Perfect to run on a Raspberry Pi or a local server.
- [Portainer](examples/portainer) - Portainer is a lightweight management UI which allows you to easily manage your different Docker environments (Docker hosts or Swarm clusters).
- [Dockge](https://github.com/louislam/dockge/blob/master/compose.yaml) - A fancy, easy-to-use and reactive self-hosted docker compose.yaml stack-oriented manager.
- [Uptimekuma](examples/uptimekuma) - Uptime Kuma is an easy-to-use self-hosted monitoring tool.
- [Changedetection](examples/changedetection) - Self-hosted tool for staying up-to-date with web-site content changes.
- [Grafana+Loki+Promtail+InfluxDB+Telegraf](examples/grafana-monitoring) - Grafana is the open source analytics & monitoring solution for every database. Combined with other open-source tools like Loki, Promtail, InfluxDB and Telegraf, monitoring data can be aggregated, normalized, filtered, parsed and finally visualized within a web dashboard.
- [Speedtest-Tracker](examples/speedtest-tracker) - Continuously track your internet speed.
- [Openspeedtest](examples/openspeedtest) - A free and open-source HTML5 network performance estimation tool written in vanilla JavaScript and only uses built-in web APIs like XHR, HTML, CSS, JS and SVG.
- [Goaccess](examples/nginx-proxy-manager-goaccess) - Real-time web log analyzer and interactive viewer that visualizes various logs of popular reverse proxies such as Nginx, Nginx Proxy Manager and Traefik.
- [WatchYourLAN](examples/watchyourlan) - Lightweight network IP scanner with web GUI.
- [Watchtower](examples/watchtower) - A container-based solution for automating Docker container base image updates.
- [dockcheck-web](examples/dockcheck-web) - A webpage showing available image updates for your running containers.
- [Unify Network Application](examples/unify-network-application) - The Unifi-network-application software is a powerful, enterprise wireless software engine ideal for high-density client deployments requiring low latency and high uptime performance.
- [UpSnap](examples/upsnap) - A simple wake on lan app written with SvelteKit, Go, PocketBase and nmap.

### Recipe Management

**[`^        back to top        ^`](#-project-list)**

Software and tools for managing [recipes](https://en.wikipedia.org/wiki/Recipe).

- [Tandoor](examples/tandoor) - Django application to manage, tag and search recipes using either built-in models or external storage providers hosting PDFs, Images or other files.
- [Mealie](examples/mealie) - Material design inspired recipe manager with category and tag management, shopping-lists, meal-planner, and site customizations. Mealie is focused on simple user interactions to keep the whole family using the app.

### Photo and Video Galleries

**[`^        back to top        ^`](#-project-list)**

A [gallery](https://en.wikipedia.org/wiki/Gallery_Software) is software that helps the user publish or share photos, pictures, videos or other digital media.

- [Immich](examples/immich) - Self-hosted photo and video backup solution directly from your mobile phone. Alternative to Google Photos.
- [Photoprism](examples/photoprism) - Personal photo management powered by Go and Google TensorFlow. Browse, organize, and share your personal photo collection, using the latest technologies to automatically tag and find pictures.
- [Stash](examples/stash) - Stash is a self-hosted webapp written in Go which organizes and serves your porn.
- [LibrePhotos](examples/librephotos) - A self-hosted open source photo management service, with face recognition, geolocation, and more.
- [Chevereto](examples/chevereto) - Ultimate image sharing software. Create your very own personal image hosting website in just minutes.

### Audio and Video Management

**[`^        back to top        ^`](#-project-list)**

Software to manage audio and video material.

- [Arr-Suite](examples/arr-suite) - Docker stack consisting of Prowlarr, Sonarr, Radarr, Lidarr, Readarr, Flaresolverr, Qbittorrent and Emby.
- [Raveberry](examples/raveberry) - A multi-user music server with a focus on participation.
- [Deemix](examples/deemix) - deemix is a barebone deezer downloader library built from the ashes of Deezloader Remix.
- [Forte](examples/forte) - forte is a self-hosted music platform. You can either connect to a forte server or create your own server for your friends & family. However, it is also very convenient to use forte on your local machine as a stand-alone music player. Supports group streaming sessions.
- [MeTube](examples/metube) - Web GUI for youtube-dl (using the yt-dlp fork) with playlist support. Allows you to download videos and audio only from YouTube and dozens of other sites.
- [Transmission](examples/transmission) - Transmission is a fast, easy, and free BitTorrent client.
- [FlareSolverr](examples/flaresolverr) - FlareSolverr is a proxy server to bypass Cloudflare and DDoS-GUARD protection.
- [Plex](examples/plex) - Plex organizes video, music and photos from personal media libraries and streams them to smart TVs, streaming boxes and mobile devices.
- [Jellyfin](examples/jellyfin) - Jellyfin is the volunteer-built media solution that puts you in control of your media. Stream to any device from your own server, with no strings attached.
- [Jackett](examples/jackett) - Jackett translates queries from apps (Sonarr, Radarr, SickRage, CouchPotato, Mylar3, Lidarr, DuckieTV, qBittorrent, Nefarious etc.) into tracker-site-specific http queries, parses the html or json response, and then sends results back to the requesting software. This allows for getting recent uploads (like RSS) and performing searches. Jackett is a single repository of maintained indexer scraping & translation logic - removing the burden from other apps.
- [Lidarr](examples/lidarr) - Lidarr is a music collection manager for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new albums from your favorite artists and will interface with clients and indexers to grab, sort, and rename them.
- [Prowlarr](examples/prowlarr) - Prowlarr is an indexer manager/proxy built on the popular *arr .net/reactjs base stack to integrate with your various PVR apps. Prowlarr supports management of both Torrent Trackers and Usenet Indexers. It integrates seamlessly with Lidarr, Mylar3, Radarr, Readarr, and Sonarr offering complete management of your indexers with no per app Indexer setup required (we do it all).
- [Radarr](examples/radarr) - Radarr is a movie collection manager for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new movies and will interface with clients and indexers to grab, sort, and rename them. It can also be configured to automatically upgrade the quality of existing files in the library when a better quality format becomes available.
- [Sonarr](examples/sonarr) - Sonarr is a PVR for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.
- [Ombi](examples/ombi) - Ombi is a tool that enables users to manage requests for movies and TV shows on their Plex server. It provides an easy-to-use interface for users to request new content, leave notes and report issues. Ombi also offers notification and newsletter features, making it easier for server owners to manage user requests and share new content updates.

### Archiving and Digital Preservation (DP)

**[`^        back to top        ^`](#-project-list)**

Digital [archiving](https://en.wikipedia.org/wiki/Archival_science) and [preservation](https://en.wikipedia.org/wiki/Digital_preservation) software.

- [Archivebox](examples/archivebox) - ArchiveBox is a powerful, self-hosted internet archiving solution to collect, save, and view websites offline.
- [Shiori](examples/shiori) - Simple bookmark manager and website archiver built with Go.

### Document Management

**[`^        back to top        ^`](#-project-list)**

A [document management system](https://en.wikipedia.org/wiki/Document_management_system) (DMS) is a system used to receive, track, manage and store documents and reduce paper.

- [Paperless NGX](examples/paperless-ngx) - A community-supported supercharged version of paperless: scan, index and archive all your physical documents.
- [Papermerge](examples/papermerge) - Free and open source document management system with OCR designed for scanned documents, digital archives, pdf, tiff, jpeg.
- [DocuSeal](examples/docuseal) - Create, fill, and sign digital documents (alternative to DocuSign).

### Pastebins

**[`^        back to top        ^`](#-project-list)**

A [pastebin](https://en.wikipedia.org/wiki/Pastebin) is a type of online content-hosting service used for sharing and storing code and text.

- [PrivateBin](examples/privatebin) - PrivateBin is a minimalist, opensource online pastebin/discussion board where the server has zero knowledge of hosted data.
- [Hemmelig](examples/hemmelig) - Keep your sensitive information out of chat logs, emails, and more with encrypted secrets. Free encrypted secret sharing for everyone!

### File Transfer & Synchronization

**[`^        back to top        ^`](#-project-list)**

- [ownCloud OCIS](examples/owncloud-ocis) - ownCloud Infinite Scale (oCIS) is the new file sync & share platform written in Golang that will be the foundation of your data management platform.
- [ownCloud](https://doc.owncloud.com/server/next/admin_manual/installation/docker/#docker-compose) - ownCloud is an open-source file sync, share and content collaboration software that lets teams work on data easily from anywhere, on any device.
- [Nextcloud](examples/nextcloud) - Access and share your files, calendars, contacts, mail and more from any device, on your terms.
- [Seafile](examples/seafile) - File hosting and sharing solution primary for teams and organizations.
- [SFTPGo](examples/sftpgo) - Fully featured and highly configurable SFTP server with optional HTTP/S, FTP/S and WebDAV support - S3, Google Cloud Storage, Azure Blob.
- [Filebrowser](examples/filebrowser) - filebrowser provides a file managing interface within a specified directory and it can be used to upload, delete, preview, rename and edit your files.
- [FileRun](examples/filerun) - FileRun is a self-hosted File Sync and Share web-based application. It is a full featured web based file manager with an easy to use user interface.
- [Gokapi](examples/gokapi) - Lightweight selfhosted Firefox Send alternative without public upload. AWS S3 supported.
- [Projectsend](examples/projectsend) - ProjectSend is a free, open source software that lets you share files with your clients, focused on ease of use and privacy. It supports clients groups, system users roles, statistics, multiple languages, detailed logs and much more!
- [Pwndrop](examples/pwndrop) - pwndrop is a self-deployable file hosting service for sending out red teaming payloads or securely sharing your private files over HTTP and WebDAV.
- [Droppy](examples/droppy) (deprecated) - droppy is a self-hosted file storage server with a web interface and capabilities to edit files and view media directly in the browser. It is particularly well-suited to be run on low-end hardware like the Raspberry Pi.
- [PairDrop](examples/pairdrop) - PairDrop is a sublime alternative to AirDrop that works on all platforms. Send images, documents or text via peer to peer connection to devices in the same local network/Wi-Fi or to paired devices.
- [MinIO](examples/minio) - MinIO is an object storage server, compatible with Amazon S3 cloud storage service, mainly used for storing unstructured data (such as photos, videos, log files, etc.).
- [Transfer.sh](examples/transfer.sh) - Easy and fast file sharing from the command-line.
- [Transfer.zip](examples/transfer.zip) - Transfer files securely and E2E encrypted (AES-256 GCM) between browsers using WebRTC Peer2peer.
- [Send](examples/send) - Simple, private file sharing with encryption. A fork of Mozilla's Firefox Send.
- [Syncthing](examples/syncthing) - Syncthing is a continuous file synchronization program. It synchronizes files between two or more computers.

### Backups

**[`^        back to top        ^`](#awesome-sysadmin)**

[Backup](https://en.wikipedia.org/wiki/Backup) software.

- [Duplicati](examples/duplicati) - Duplicati is a backup client that securely stores encrypted, incremental, compressed remote backups of local files on cloud storage services and remote file servers.
- [Duplicacy](examples/duplicacy) - A lock-free deduplication cloud backup tool.

### Note-taking & Editors

**[`^        back to top        ^`](#-project-list)**

[Note taking](https://en.wikipedia.org/wiki/Note-taking) editors.

- [Excalidraw](examples/excalidraw) - Excalidraw is a virtual collaborative whiteboard tool that lets you easily sketch diagrams that have a hand-drawn feel to them.
- [HedgeDoc](examples/hedgedoc) - HedgeDoc lets you create real-time collaborative markdown notes.
- [Overleaf](examples/overleaf) - Overleaf is a collaborative cloud-based LaTeX editor used for writing, editing and publishing scientific documents.
- [Obsidian-Gitsync-Perlite](https://github.com/l4rm4nd/Obsidian-Gitsync-Perlite) - Continuously sync Obsidian markdown notes from GitHub and publish it for the webs.
- [Obsidian-Remote](examples/obsidian-remote) - This docker image allows you to run obsidian in docker as a container and access it via your web browser.
- [Memos](examples/memos) - An open-source, self-hosted memo hub with knowledge management and social networking.

### URL Shorteners

**[`^        back to top        ^`](#-project-list)**

- [YOURLS](examples/yourls) - The de-facto standard self hosted URL shortener in PHP.

### Blogging Platforms and Homepages

**[`^        back to top        ^`](#-project-list)**

A [blog](https://en.wikipedia.org/wiki/Blog) is a discussion or informational website consisting of discrete, diary-style text entries (posts).

- [Ghost](examples/ghost) - Ghost is a free and open source blogging platform written in JavaScript and distributed under the MIT License, designed to simplify the process of online publishing for individual bloggers as well as online publications.
- [WordPress](examples/wordpress) - WordPress is a free and open-source content management system written in hypertext preprocessor language and paired with a MySQL or MariaDB database with supported HTTPS.
- [Nginx + PHP](examples/nginx-php) - Nginx is a web server that can also be used as a reverse proxy, load balancer, mail proxy and HTTP cache. Combined with PHP, a general-purpose scripting language geared toward web development, server-side functions can be implemented for the webs.

### Communication - Social Networks, Forums and Video Conferencing

**[`^        back to top        ^`](#-project-list)**

[Social Networking](https://en.wikipedia.org/wiki/Social_networking_service) and [Forum](https://en.wikipedia.org/wiki/Internet_forum) software.

- [Rocket.Chat](examples/rocketchat) - Rocket.Chat is an open-source fully customizable communications platform developed in JavaScript for organizations with high standards of data protection.
- [Mattermost](examples/mattermost) - Mattermost is an open source platform for secure collaboration across the entire software development lifecycle.
- [Answer](examples/answer) - An open-source knowledge-based community software. You can use it quickly to build Q&A community for your products, customers, teams, and more.
- [Mirotalk P2P](examples/mirotalk) - Simple, Secure, Fast Real-Time Video Conferences Up to 4k and 60fps, compatible with all browsers and platforms.
- [Reactive-Resume](examples/rxresume) - A one-of-a-kind resume builder that keeps your privacy in mind. Completely secure, customizable, portable, open-source and free forever.

### E-commerce

**[`^        back to top        ^`](#-project-list)**

[E-commerce](https://en.wikipedia.org/wiki/E-commerce) software.

- [EverShop](examples/evershop) - EverShop is a GraphQL Based and React ecommerce platform with essential commerce features. Built with React, modular and fully customizable.

### Analytics

**[`^        back to top        ^`](#-project-list)**

[Analytics](https://en.wikipedia.org/wiki/Analytics) is the systematic computational analysis of data or statistics. It is used for the discovery, interpretation, and communication of meaningful patterns in data.

- [Matomo](examples/matomo) - Matomo is the leading Free/Libre open analytics platform.
- [Plausible](examples/plausible) - Simple, open-source, lightweight (< 1 KB) and privacy-friendly web analytics alternative to Google Analytics.

### Security & Privacy

**[`^        back to top        ^`](#-project-list)**

Software that helps to increase security and privacy.

- [Nessus](examples/nessus) - Nessus is a proprietary vulnerability scanner developed by Tenable, Inc.
- [Greenbone](examples/greenbone) - Greenbone is the world's most trusted provider of open source vulnerability management.
- [SonarQube](examples/sonarqube) - SonarQube is an open-source platform developed by SonarSource for continuous inspection of code quality to perform automatic reviews with static analysis of code to detect bugs and code smells on 29 programming languages.
- [Fail2ban](examples/fail2ban) - Fail2ban is an intrusion prevention software framework. Written in the Python programming language, it is designed to prevent against brute-force attacks.
- [Tor-Browser](examples/tor-browser) - Running a Tor browser instance on any headless server.
- [Firefox](examples/firefox) - Firefox by linuxserver.io allows you to run the popular Firefox web broser on a remote server.
- [Bibliogram](examples/bibliogram) (deprecated) - Bibliogram is a private front-end frontend to Instagram, similar to Invidous.
- [Nitter](examples/nitter) - Nitter is an alternative front-end to Twitter, and was inspired by Invidious.
- [Unify Network Application](examples/unify-network-application) - The Unifi-network-application software is a powerful, enterprise wireless software engine ideal for high-density client deployments requiring low latency and high uptime performance.

### Wikis & Knowledge Base

**[`^        back to top        ^`](#-project-list)**

A [wiki](https://en.wikipedia.org/wiki/Wiki) is a publication collaboratively edited and managed by its own audience directly using a web browser.

- [Bookstack](examples/bookstack) - BookStack is a free and open-source wiki software aimed for a simple, self-hosted, and easy-to-use platform.
- [Wiki.js](examples/wikijs) - Wiki.js is an open source project that has been made possible due to the generous contributions by community backers.
- [Answer](examples/answer) - An open-source knowledge-based community software. You can use it quickly to build Q&A community for your products, customers, teams, and more.
- [Obsidian-Remote](examples/obsidian-remote) - This docker image allows you to run obsidian in docker as a container and access it via your web browser.
- [Obsidian-Gitsync-Perlite](https://github.com/l4rm4nd/Obsidian-Gitsync-Perlite) - Continuously sync Obsidian markdown notes from GitHub and publish it for the webs.
- [Memos](examples/memos) - An open-source, self-hosted memo hub with knowledge management and social networking.
- [HedgeDoc](examples/hedgedoc) - HedgeDoc lets you create real-time collaborative markdown notes.

### Money, Budgeting & Management

**[`^        back to top        ^`](#-project-list)**

[Money management](https://en.wikipedia.org/wiki/Money_management) and budgeting software.

- [TRSync](examples/trsync) - Django web frontend for pytr to download all Trade Republic depot data.
- [Money-Balancer](examples/money-balancer) - A simple application for managing debt with your friends!
- [Firefly III](examples/firefly-iii) - A self-hosted manager for your personal finances.

### Genealogy

**[`^        back to top        ^`](#-project-list)**

[Genealogy software](https://en.wikipedia.org/wiki/Genealogy_software) used to record, organize, and publish genealogical data.

- [webtrees](examples/webtrees) - webtrees is the web's leading online collaborative genealogy application. It allows you to view and edit your genealogy on your selfhosted website.
- [Gramps-Web](examples/gramps-web) - Gramps Web is a web app for collaborative genealogy. It is based on and interoperable with Gramps, the leading open source genealogy desktop application.

### Asset Management

**[`^        back to top        ^`](#-project-list)**

[Asset management](https://en.wikipedia.org/wiki/Asset_management) is a systematic approach to the governance and realization of all value for which a group or entity is responsible.

- [Domainmod](examples/domainmod) - DomainMOD is an open source application used to manage your domains and other internet assets in a central location.
- [Snipe-IT](examples/snipe-it) - Snipe-IT is a free, open source IT asset management system written in PHP.

### Request Bins

**[`^        back to top        ^`](#-project-list)**

A request bin service allows one to collect and inspect HTTP requests. It may be used to create mock API endpoints or troubleshoot HTTP requests. Also used by security professionals to verify security vulnerabilities like Server Side Request Forgery (SSRF) and others.

- [RequestBin](examples/requestbin) - RequestBin gives you a unique URL that collects HTTP requests for debugging and development purposes.
- [Webhook.site](examples/webhook.site) - Easily test HTTP webhooks with this handy tool that displays requests instantly.
- [Request-Baskets](https://github.com/darklynx/request-baskets) - HTTP requests collector to test webhooks, notifications, REST clients and more.
- [Mockbin](https://github.com/Kong/mockbin) - Mock, Test & Track HTTP Requests and Response for Microservices.

### Games and Control Servers

**[`^        back to top        ^`](#-project-list)**

Multiplayer game servers, browser games and utilities for managing game servers.

- [cs2-dedicated-server](examples/cs2-dedicated-server) - CS2 Dedicated Server Docker Image with an RCON web-based control panel.
- [posio](examples/posio) - A multiplayer geography game using Websockets.
- [Monkeytype](examples/monkeytype) - The most customizable typing website with a minimalistic design and a ton of features. Test yourself in various modes, track your progress and improve your speed.

### Miscellaneous

**[`^        back to top        ^`](#-project-list)**

Software that does not fit in another section.

- [Network-Multitool](examples/network-multitool) - Multi-arch multitool for container network troubleshooting.
- [IT-Tools](examples/it-tools) - Collection of handy online tools for developers, with great UX.

## 🌟 Star History
[![Star History Chart](https://api.star-history.com/svg?repos=Haxxnet/Compose-Examples&type=Date)](https://star-history.com/#Haxxnet/Compose-Examples&Date)

## 🧑‍🤝‍🧑 Join the Community!

Many thanks to all contributors that help maintaining and improving this repo:

<a href="https://github.com/Haxxnet/Compose-Examples/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Haxxnet/Compose-Examples" />
</a>
