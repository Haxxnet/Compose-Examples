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
