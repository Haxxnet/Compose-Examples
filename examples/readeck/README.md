# References

- https://codeberg.org/readeck/readeck
- https://readeck.org/en/docs/deploy#setup-a-reverse-proxy

# Notes

If you're using readeck as a container behind a reverse proxy, you must set the environment variable `READECK_USE_X_FORWARDED=1`. 

Furthermore, you must adjust the `allowed_hosts` directive in the Readeck config at `config.toml`. The configuration file is stored within the Docker bind volume mount. Please define your subdomain(s) in use as follows:

````
[server]
host = "0.0.0.0"
port = 8000
allowed_hosts = ["readeck.example.com"]
use_x_forwarded_for = true
use_x_forwarded_host = true
use_x_forwarded_proto = true
````

