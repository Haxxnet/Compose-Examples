# Reference

- https://www.firezone.dev/docs/deploy/docker

# Notes

1. Download the `docker-compose.yml` and `.env` file from this repository.
2. Adjust both files to your needs. Especially change the default secrets!
3. Proceed by executing the below commands.

````
docker compose run --rm firezone bin/migrate
docker compose run --rm firezone bin/create-or-reset-admin
docker compose up -d
````

Note: This compose setup requires an already existing dockerized Traefik reverse proxy.
