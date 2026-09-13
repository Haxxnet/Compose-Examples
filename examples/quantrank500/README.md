# References

- https://github.com/RusUsf/quantrank500
- https://quantrank500.com
- https://github.com/RusUsf/quantrank500/tree/master/examples

# Notes

No image is published to a registry yet, so `api` and `worker` build straight
from the git context. The first `docker compose up` therefore compiles the
image; later starts reuse it.

Both services run the same image and differ only in the command: `api` serves
the public HTTP API on port 8000, `worker` runs the nightly settlement replay.

Change `CHANGEME` in all four places (the Postgres password and the two DSNs)
before starting.

The upstream repository also ships an nginx service that serves the static
frontend and rate-limits the API. It is left out here because it bind-mounts
files from a checkout; clone the repository and use its own
`docker-compose.yml` if you want the web UI as well.
