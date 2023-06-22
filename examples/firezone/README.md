# Reference

- https://www.firezone.dev/docs/deploy/docker

# Notes

1. Download the `docker-compose.yml` and `env.example` file from this repository.
2. Adjust the compose file to your needs.
3. Renamte the `env.example` file to `.env` and adjust to your needs. Especially change the default secrets!
5. Proceed by executing the below commands.

````
docker compose run --rm firezone bin/migrate
docker compose run --rm firezone bin/create-or-reset-admin
docker compose up -d
````

Note: This compose setup requires an already existing dockerized Traefik reverse proxy.
