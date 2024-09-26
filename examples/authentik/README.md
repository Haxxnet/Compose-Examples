# References

- https://goauthentik.io/docs/installation/
- https://blog.lrvt.de/authentik-traefik-azure-ad/

# Notes

Start by creating a new Docker network for separation:

````
docker network create authentik-internal
````

Then adjust the `.env` file with your private secrets and spawn up the stack:

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
