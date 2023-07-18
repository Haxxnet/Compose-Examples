# Reference

- https://www.firezone.dev/docs/deploy/docker

# Notes

1. Download the `docker-compose.yml` file from this repository.
2. Create a firezone `.env` file via the command `docker run --rm firezone/firezone bin/gen-env > .env`
3. Adjust `docker-compose.yml` and created `.env` to your needs. Especially change the environment variables `DEFAULT_ADMIN_EMAIL`, `DEFAULT_ADMIN_PASSWORD` and `EXTERNAL_URL` to secure values!
4. Proceed by executing the below commands.

````
docker compose run --rm firezone bin/migrate
docker compose run --rm firezone bin/create-or-reset-admin
docker compose up -d
````

Note: It is recommended to run the Firezone web panel behind a reverse proxy (e.g. Traefik) if you want to expose it. Alternatively, keep it running on http://127.0.0.1:13000.
