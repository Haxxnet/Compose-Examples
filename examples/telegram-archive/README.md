# References

- https://github.com/GeiserX/Telegram-Archive
- https://hub.docker.com/r/drumsergio/telegram-archive
- https://hub.docker.com/r/drumsergio/telegram-archive-viewer

# Notes

Both containers run as uid 1000, so the data folder must belong to that user: `sudo chown -R 1000:1000 ${DOCKER_VOLUME_STORAGE:-/mnt/docker-volumes}/telegram-archive`. Log in to Telegram once before the first start with `docker compose run --rm telegram-backup python -m telegram_archive auth`; it asks for the code Telegram sends you. The viewer is on port 8000.
