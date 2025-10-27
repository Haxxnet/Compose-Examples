# References

- https://github.com/goauthentik/authentik
- https://blog.lrvt.de/authentik-traefik-azure-ad/

# Notes

Adjust the `.env` file with your private secrets and spawn up the stack:

````
docker compose up -d
````

After spawning up the Authentik stack, you will be greeted by Authentik's login dashboard. However, you have to onboard an admin user first. 

This is done by visiting the following URL: 

````
# with TLS reverse proxy
https://<hostname>/if/flow/initial-setup/

# without TLS reverse proxy
https://<hostname>:9000/if/flow/initial-setup/
````

## Traefik Outpost on another server

In case you want to protect containers with Authentik but your Authentik runs on another, totally different server, you can deploy an outpost container. This container will communicate with your offsite Authentik instance and provide a traefik forward-auth middleware.

Follow these instructions:

1. Create your to-be-protected application at your Authentik instance (provider + app) as usual.
2. Create a new outpost at your Authentik instance at `/if/admin/#/outpost/outposts`.
    - Make note of the deployment token. This one will later be used as env in `AUTHENTIK_TOKEN` for the outpost container.
    - Add your previously to-be-protected application to this outpost.
4. Spawn the outpost proxy container on your server, where Authentik is not running.

````
services:

  authentik-outpost:
    image: ghcr.io/goauthentik/proxy:2025.10
    container_name: authentik-outpost
    restart: unless-stopped
    expose:
       - 9000
    environment:
      AUTHENTIK_HOST: https://authentik.example.com # <-- adjust
      AUTHENTIK_TOKEN: <YOUR-DEPLOYMENT-TOKEN> # <-- adjust
      AUTHENTIK_INSECURE: "false"  # set to "true" if your Authentik domain uses self-signed certs
    labels:
      - traefik.enable=true
      - traefik.http.middlewares.authentik.forwardauth.address=http://authentik-outpost:9000/outpost.goauthentik.io/auth/traefik
      - traefik.http.middlewares.authentik.forwardauth.trustForwardHeader=true
      - traefik.http.middlewares.authentik.forwardauth.authResponseHeaders=X-authentik-username,X-authentik-groups,X-authentik-email,X-authentik-name,X-authentik-uid,X-authentik-jwt,X-authentik-meta-jwks,X-authentik-meta-outpost,X-authentik-meta-provider,X-authentik-meta-app,X-authentik-m>
    networks:
      - proxy

networks:
  proxy:
    external: true
````

Afterwards, you can use the new middleware `authentik@docker` for your running containers. If enabled, you have to authenticate against the Authentik instance, which runs somewhere else. 

Here an example on how to enable the middleware on a simplistic whoami container:

````
services:

  whoami:
    image: traefik/whoami
    container_name: whoami
    command:
       - --name=whoami
    labels:
      - traefik.enable=true
      - traefik.docker.network=dev
      - traefik.http.routers.whoami.rule=Host(`whoami.example.com`)
      - traefik.http.routers.whoami.service=whoami
      - traefik.http.services.whoami.loadbalancer.server.port=80
      - traefik.http.routers.whoami.middlewares=authentik@docker # <--- this is the relevant part
````
