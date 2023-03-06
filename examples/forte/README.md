# References

- https://github.com/kaangiray26/forte

# Notes

After deploying, the forte admin dashboard will be available on TCP/3000. You can log into the web dashboard using `forte` as username and `alternative` as password. Please change those default credentials. Use a reverse proxy like Traefik if you plan on exposing the forte instance, as HTTPS is required to stream flawlessly.

After creating a user account via the forte web dashboard, you can browse https://forte.buzl.uk/ and use your own server to stream music from. Specify your created user account and the automatically created password token.