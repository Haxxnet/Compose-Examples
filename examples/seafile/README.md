# References

- https://github.com/haiwen/seafile-docker

# Notes

If you run seafile behind a SSL/TLS reverse proxy with HTTPS, you will likely see a `CSRF verification failed` error message during login.

Try adding your domain to the corresponding Django setting inside the Docker bind mount location `/mnt/docker-volumes/seafile/data/seafile/conf/seahub_settings.py`:

````
CSRF_TRUSTED_ORIGINS = ["https://seafile.example.com"]
````

See https://github.com/haiwen/seafile/issues/2707#issuecomment-1732493096
