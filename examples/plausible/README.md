# References

- https://github.com/plausible/analytics

# Notes

You have to place two clickhouse configuration files at the corresponding Docker bind volume mounts before starting the stack:

````
wget https://raw.githubusercontent.com/plausible/hosting/master/clickhouse/clickhouse-config.xml
wget https://raw.githubusercontent.com/plausible/hosting/master/clickhouse/clickhouse-user-config.xml

mv clickhouse-config.xml /mnt/docker-volumes/plausible/clickhouse/.
mv clickhouse-user-config.xml /mnt/docker-volumes/plausible/clickhouse/.

docker compose up
````

## Retention Time

Plausible's Clickhouse event database will grow over time. There is no retention time currently implemented or defined. See https://github.com/plausible/analytics/discussions/1354.

However, it is possible to manually define a `TTL`, which will automatically prune event data that hit a specific age. Note that the example commands below will set the retention time to 356 days. So event or session data, older than 365 days (1 year), will automatically be pruned from the database.

> [!WARNING]
> By running the below commands you will configure a retention time. This can cause data loss and impact the statistics shown in the Plausible dashboard. Please run wisely and choose your preferred retention time. 
>
> The example uses 365 days, so you can inspect website statistics back to 1 year. For Plausible v1 the table names are called `events` and `sessions` without `_v2`.

````
# exec into the running docker container
docker compose exec plausible_events_db clickhouse-client

# select the correct database
\c plausible_events_db

# alter events_v2 table and add TTL with retention time
ALTER TABLE events_v2 MODIFY TTL timestamp + INTERVAL 365 DAY;

# alter sessions_v2 table and add TTL with retention time
ALTER TABLE sessions_v2 MODIFY TTL timestamp + INTERVAL 365 DAY;

# optimization
OPTIMIZE TABLE events_v2 FINAL;
OPTIMIZE TABLE sessions_v2 FINAL;
````
