# References

- https://hub.docker.com/r/linuxserver/unifi-network-application
- https://github.com/Haxxnet/Compose-Examples/issues/16#issuecomment-1733524477

# Notes

Note that you are mounting a file named init-mongo.js into the mongo db container. This file is necessary to initialize the mongo database (see https://hub.docker.com/_/mongo/ at "Initializing a fresh instance"). 

It basically defines the database name and user credentials for the unifi-network-application container.

These parameters are also referenced in the docker-compose.yml file. So either leave as is or adjust everywhere accordingly.
