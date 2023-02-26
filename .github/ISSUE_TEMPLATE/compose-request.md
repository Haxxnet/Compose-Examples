---
name: Compose request
about: Request a currently missing FOSS compose example
title: ''
labels: ''
assignees: ''

---

**What FOSS project is currently missing. Provide names and links.**

* NAME: 
* GitHub URL: 

**Does an example docker-compose.yml exist?**

* [0] - Yes, managed by the FOSS maintainer. See links below.
* [1] - Yes, I have a personal working compose file. See code below.
* [2] - No, I have not found any and want to request one.

Here some links to pre-existing docker-compose examples:
- <link1>
- <link2>

Here my personal working docker-compose.yml:

````
version: '3.3'

services:
  example:
    image: user/image:tag
    container_name: example
    hostname: example
    #user: 1000:1000
    restart: unless-stopped
    ports:
      - 8080:8080/tcp
    volumes:
      #- /etc/localtime:/etc/localtime:ro
      #- /etc/timezone:/etc/timezone:ro
      #- /var/run/docker.sock:/var/run/docker.sock:ro
      - ${DOCKER_VOLUME_STORAGE:-/mnt/docker-volumes}/example:/opt/example/data
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Berlin
    #networks:
    #  - proxy
    #labels:
    #  - traefik.enable=true
    #  - traefik.http.routers.CHANGEME.rule=Host(`service.example.com`)
    #  - traefik.http.services.CHANGEME.loadbalancer.server.port=8080
    #  - traefik.http.services.CHANGEME.loadbalancer.server.scheme=https # optional, but sometines necessary when proxying to https services
    #  - traefik.http.services.CHANGEME.loadbalancer.serverstransport=insecureTransport@file # optional, but sometines necessary when proxying to https services
    #  - traefik.http.middlewares.limit.buffering.maxRequestBodyBytes=50000000 # optional, only necessary for enabled file uploads
    #  - traefik.http.middlewares.limit.buffering.maxResponseBodyBytes=50000000 # optional, only necessary for enabled file uploads
    #  - traefik.http.middlewares.limit.buffering.memRequestBodyBytes=50000000 # optional, only necessary for enabled file uploads
    #  - traefik.http.middlewares.limit.buffering.memResponseBodyBytes=50000000 # optional, only necessary for enabled file uploads    
    #  - traefik.docker.network=proxy
    #  # Part for optional traefik middlewares
    #  - traefik.http.routers.CHANGEME.middlewares=local-ipwhitelist@file,basic-auth@file

#networks:
#  proxy:
#    external: true
````

**Describe alternatives you've considered**
A clear and concise description of any alternative solutions or features you've considered.

**Additional context**
Add any other context or screenshots about the feature request here.
