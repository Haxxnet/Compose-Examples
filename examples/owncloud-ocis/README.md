# References

- https://github.com/owncloud/ocis/tree/master/deployments/examples
- https://github.com/owncloud/ocis/tree/master/deployments/examples/ocis_traefik

# Notes

After spawning up the docker container, a new admin password will be generated automatically. You can obtain the admin password either via the container logs or by inspecting the created `ocis.yaml` file within your volume mounts.

It is recommended to use Owncloud OCIS behind a reverse proxy (e.g. Traefik). If you already run a Traefik reverse proxy, just uncomment and adjust the labels.

Note: The docker volume mounts must be writable by the container. OCIS does not support UID/GUID mappings yet. So 0777 linux permissions likely required.
