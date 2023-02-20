# References

https://github.com/miroslavpejic85/mirotalk

# Notes

You have to place the `/app/` and `/public/` directories at your Docker bind volume mounts.

````
git clone https://github.com/miroslavpejic85/mirotalk
cp -R mirotalk/app/ /mnt/docker-volumes/mirotalk/app
cp -R mirotalk/public/ /mnt/docker-volumes/mirotalk/public
rm -rf mirotalk

# may move the .env too and adjust compose file
# then docker compose up
````

You must use a reverse proxy and enable SSL to proxy to the container port TCP/3000. 

This is necessary as you are not allowed to run WebRTC on plaintext http after Chrome 47+.
