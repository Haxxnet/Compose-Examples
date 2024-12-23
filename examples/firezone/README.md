# Reference

- https://github.com/l4rm4nd/firezone (fork, maintained)
- https://github.com/firezone/firezone/tree/legacy (EoL)

> [!WARNING]
> Firezone v0.7 has reached End-of-Life on 31st January 2024.
>
> It undergoes a complete redesign (zero-knowledge, cloud) for v1.0 and won't provide any updates for the v0.7 (legacy) branch anymore. More information can be found [here](https://www.firezone.dev/blog/firezone-1-0).

> [!TIP]
> A new fork (l4rm4nd/firezone) tries to fix outdated dependencies and keep the software alive.
>
> The fork starts with a new v7.0.0 release version and tag.

# Notes

````
# download compose file
wget https://raw.githubusercontent.com/Haxxnet/Compose-Examples/main/examples/firezone/docker-compose.yml

# generate an .env file
docker run --rm ghcr.io/l4rm4nd/firezone:latest bin/gen-env > .env

# adjust .env file to your needs
# define EXTERNAL_URL + DEFAULT_ADMIN_EMAIL + DEFAULT_ADMIN_PASSWORD

# disable telemetry via .env
echo -e "\nTELEMETRY_ENABLED=false" >> .env

# enable local auth
echo -e "\nLOCAL_AUTH_ENABLED=true" >> .env

# migrate database and create admin user
docker compose run --rm firezone bin/migrate
docker compose run --rm firezone bin/create-or-reset-admin

# spawn the container stack
docker compose up -d
````

Afterwards, the admin mgmt UI is accessible on http://127.0.0.1:13000.

It is recommended to combine Firezone with a TLS reverse proxy such as Traefik as well as with an Identity Provider (IdP) such as Keycloak or Authentik for Single-Sign-On (SSO). Once SSO is enabled, you should disable the possibility for local authentication via the .env file.
