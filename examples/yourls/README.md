# References

- https://github.com/YOURLS/YOURLS

# Notes

The provided `docker-compose.yml` file bind mounts a custom Apache `security.conf` into the container. 

This ensures that YOURL's Apache web server does not disclose its detailed version information.
