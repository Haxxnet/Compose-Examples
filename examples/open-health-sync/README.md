# References

- https://github.com/soma-intelligence/open-health-sync
- https://github.com/soma-intelligence/open-health-sync/blob/main/docs/self-hosting.md

# Notes

Open Health Sync collects health data from Apple Health, Health Connect, Oura, WHOOP, Withings, Fitbit, Dexcom and other sources into Postgres (TimescaleDB). It serves it through a REST API, FHIR R4, Open mHealth, CSV/Parquet exports and a read-only MCP server.

Before the first start:

````
# set the same database password in both places (POSTGRES_PASSWORD and OHS_DATABASE_URL)
# generate the encryption key and paste it into OHS_ENCRYPTION_KEY
openssl rand -base64 32

# the server runs as 1000:1000, so its raw volume must be owned by that user
mkdir -p /mnt/docker-volumes/open-health-sync/raw
chown -R 1000:1000 /mnt/docker-volumes/open-health-sync/raw
````

Keep the encryption key safe: it seals stored provider tokens, and losing it means reconnecting every provider.

After `docker compose up -d`, check the configuration and create an API key (printed once):

````
docker exec open-health-sync /ohs doctor
docker exec open-health-sync /ohs admin tenant create --name dev
````

No device or provider keys yet? `docker exec open-health-sync /ohs seed --demo` loads 90 days of synthetic data and prints calls to try.

Set `OHS_PUBLIC_URL` to the address users reach (for example behind Traefik), since provider OAuth callbacks use it. Provider keys and every other setting are documented in the project's `.env.example`.
