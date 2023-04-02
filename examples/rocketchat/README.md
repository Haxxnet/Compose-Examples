# References

- https://github.com/RocketChat/Docker.Official.Image

# Notes

The mongodb container will likely throw a permission error when being started for the first time.

````
error: 'An error occurred when creating an index for collection "users: getaddrinfo EAI_AGAIN mongodb',
  reason: undefined,
  details: undefined,
  errorType: 'Meteor.Error'
````

Therefore, you have to adjust the permissions of the mongodb volume path. For example with the following command:

````
sudo chmod -R 777 /mnt/docker-volumes/rocketchat
````
