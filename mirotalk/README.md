# References

https://github.com/miroslavpejic85/mirotalk

# Notes

You have to place the `/app/` and `/public/` directories at your Docker bind volume mounts.

````
git clone https://github.com/miroslavpejic85/mirotalk
cp -R mirotalk/app/ /mnt/docker-volumes/mirotalk/app
cp -R mirotalk/public/ /mnt/docker-volumes/mirotalk/public
rm -rf mirotalk

# then docker compose up
````
