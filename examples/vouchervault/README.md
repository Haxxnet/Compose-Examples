# References

- https://github.com/l4rm4nd/VoucherVault

# Notes

> [!WARNING]
> The container runs as low-privileged `www-data` user. So you have to adjust the permissions for the persistent database bind mount volume. A command like `sudo chown -R www-data:www-data <path-to-volume-data-dir>` should work. Afterwards, please restart the container.
