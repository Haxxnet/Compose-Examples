# References

- https://openvpn.net/as-docs/docker.html

# Notes

Default username is `openvpn`. 

The password is auto-generated and displayed in container logs. Inspect the logs until you find the line `Auto-generated pass = "<password>"`. 

For example:
````
docker compose logs -f | grep pass
````

Admin web UI is accessible at `https://<IP>:943/admin`.
