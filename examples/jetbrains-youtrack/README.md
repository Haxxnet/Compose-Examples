# References

- https://hub.docker.com/r/jetbrains/youtrack/

# Note

The JetBrains YouTrack container runs as specific user with a UID and GUID of `13001`.

Therefore, ensure proper permissions on the Docker data bind mount volumes:

````
sudo chown -R 13001:13001 /mnt/docker-volumes/youtrack
sudo chmod -R 777 /mnt/docker-volumes/youtrack
````
