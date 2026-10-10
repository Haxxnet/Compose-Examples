# References

- https://github.com/GeiserX/LynxPrompt
- https://hub.docker.com/r/drumsergio/lynxprompt
- https://lynxprompt.com

# Notes

Fill in the `.env` file: generate `NEXTAUTH_SECRET` with `openssl rand -base64 32` and `POSTGRES_PASSWORD` with `openssl rand -hex 24`. Sign-in is a link sent by mail, so set the `SMTP_*` values of a real mail server (leave `SMTP_USER` and `SMTP_PASSWORD` empty if it needs no login; port 465 uses TLS). Set `APP_URL` to the address you open it on, `http://` or `https://`, and `SUPERADMIN_EMAIL` to your address to become superadmin on your first sign-in. The app runs as uid 1001, so avatar and logo uploads need `sudo chown -R 1001:1001 ${DOCKER_VOLUME_STORAGE:-/mnt/docker-volumes}/lynxprompt/uploads`.
