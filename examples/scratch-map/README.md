# References

- https://github.com/ad3m3r5/scratch-map

# Notes

May require you to fix permissions of the bind mount volume:

````
sudo chown -R 1000:1000 ${DOCKER_VOLUME_STORAGE:-/mnt/docker-volumes}/scratch-map
````
