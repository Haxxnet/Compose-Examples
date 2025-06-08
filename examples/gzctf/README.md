# References

- https://gzctf.gzti.me/guide/start/quick-start.html
- https://github.com/GZTimeWalker/GZCTF
- https://github.com/l4rm4nd/GZCTF-Cloner

# Notes

You have to pre-supply the `appsettings.json` in the bind mount volume dir.

````
sudo mkdir -p /mnt/docker-volumes/gzctf/config
sudo chmod -R 775 /mnt/docker-volumes/gzctf/config
cp appsettings.json /mnt/docker-volumes/gzctf/config/.
````
