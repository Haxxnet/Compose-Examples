# References

- https://github.com/GeiserX/LynxPrompt
- https://hub.docker.com/r/drumsergio/lynxprompt
- https://lynxprompt.com

# Notes

Fill in the `.env` file: generate `NEXTAUTH_SECRET` with `openssl rand -base64 32` and `POSTGRES_PASSWORD` with `openssl rand -hex 24`. Sign-in is a link sent by mail, so set the `SMTP_*` values of a real mail server (leave `SMTP_USER` and `SMTP_PASSWORD` empty if it needs no login; port 465 uses TLS). Set `SUPERADMIN_EMAIL` to your address: the first sign-in creates the account and the second makes it superadmin. Serve it over HTTPS behind your reverse proxy and set `APP_URL` to that `https://` address: the sign-in cookies are `__Host-` and `__Secure-` cookies, which browsers refuse on any plain `http://` address, `localhost` included, and sign-in then fails without an error. The app runs as uid 1001, so avatar and logo uploads need `sudo chown -R 1001:1001 ${DOCKER_VOLUME_STORAGE:-/mnt/docker-volumes}/lynxprompt/uploads`.
