# References

- https://github.com/mattermost/docker
- https://docs.mattermost.com/install/install-docker.html

# Notes

The bind volume permissions must be adjusted:

````
sudo chown -R 2000:2000 /mnt/docker-volumes/mattermost/*
````

Finally, run `docker compose up` to spawn the container.
