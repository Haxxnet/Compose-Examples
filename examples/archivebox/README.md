# References

- https://github.com/ArchiveBox/ArchiveBox
- https://github.com/ArchiveBox/ArchiveBox/blob/dev/docker-compose.yml

# Notes

Before starting the compose stack, ensure that you have downloaded the sonic configuration file, if you plan on using the sonic container. 

Place the config file in the bind volume mount path for sonic.

The default username and password are: archivebox

Please read the [official storage requirements](https://github.com/ArchiveBox/ArchiveBox#storage-requirements) if your ArchiveBox instance is running slow, sluggish or times out. TLDR: Do not store the Docker volume data on a network storage like SMB/NFS.
