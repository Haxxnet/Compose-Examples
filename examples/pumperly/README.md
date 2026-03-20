# References

- https://github.com/GeiserX/pumperly
- https://hub.docker.com/r/drumsergio/pumperly
- https://pumperly.com

# Notes

Pumperly is an open-source fuel & EV route planner with real-time prices across 36 countries. The stack consists of four services:

| Service | Purpose | Steady-state RAM |
|---|---|---|
| `pumperly` | Next.js web app (UI + API + scrapers) | ~512 MB |
| `pumperly-db` | PostGIS database (stations + prices) | ~2 GB |
| `pumperly-valhalla` | Valhalla routing engine (A-to-B directions) | ~2 GB |
| `pumperly-photon` | Photon geocoding (address search) | ~3 GB |

## First Start

- **Valhalla** downloads OpenStreetMap PBF extracts and builds routing tiles on first start. This takes **3-6 hours** and peaks at ~15-24 GB RAM. Subsequent starts load pre-built tiles in seconds.
- **Photon** downloads and imports per-country geocoding data. The first country is imported before the server starts (~30 min), remaining countries are imported in the background. Full import for 30 countries takes **20+ hours**.
- **Station data** begins populating automatically once the app starts (scrapers run on startup).

## Customization

- Adjust `PUMPERLY_ENABLED_COUNTRIES` to limit which countries are scraped.
- Adjust Valhalla's `tile_urls` and Photon's `COUNTRIES` list to match your enabled countries.
- Valhalla and Photon are optional. Without them, route planning and geocoding are disabled, but the map and price data still work.
- Some countries require free API keys (e.g., `TANKERKOENIG_API_KEY` for Germany). See the [project README](https://github.com/GeiserX/pumperly#api-keys) for details.

## Credentials

Remember to change `POSTGRES_PASSWORD` and the password in `DATABASE_URL` from the default `changeme`.
