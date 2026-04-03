# References

- https://github.com/GeiserX/LynxPrompt
- https://hub.docker.com/r/drumsergio/lynxprompt
- https://lynxprompt.com

# Notes

LynxPrompt uses four separate PostgreSQL databases by design (app, users, blog, support) for data isolation. Generate a `NEXTAUTH_SECRET` with `openssl rand -base64 32`.
