# References

- https://github.com/haiwen/seafile-docker

# Notes

If you run seafile behind a SSL/TLS reverse proxy with HTTPS, you will likely see a few error messages during login or uploads.

### CSRF Verification Failed

During first login, you may receive a CSRF verification error. This is caused by the Django CMS, which verifies requests based on the Referer HTTP header.

To fix the issue, add your domain via the following config line in `/mnt/docker-volumes/seafile/data/seafile/conf/seahub_settings.py`:

````
CSRF_TRUSTED_ORIGINS = ["https://seafile.example.com"]
````

See https://github.com/haiwen/seafile/issues/2707#issuecomment-1732493096

### Network Error During File Uploads

Once logged into Seafile you may notice that file uploads do not work yet. You will receive a network failure error when trying to upload something.

This is caused by Seafile's default settings using HTTP urls for `SERVICE_URL` and `FILE_SERVER_ROOT`. 

Head over to the system administration area at `/sys/web-settings/` and adjust both URL variables to use HTTPS instead.
