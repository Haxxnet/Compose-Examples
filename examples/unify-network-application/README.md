# References

- https://hub.docker.com/r/linuxserver/unifi-network-application

# Notes

>[!TIP]
> Starting with version 8.1 of Unifi Network Application, mongodb 3.6 through 7.0 are supported. Starting with version 9.0 of Unifi Network Application, mongodb 8.0 is also supported.

Note that you are mounting a file named init-mongo.sh into the mongo db container. This file is necessary to initialize the mongo database (see https://hub.docker.com/_/mongo/ at "Initializing a fresh instance"). 

It basically defines the database name and user credentials for the unifi-network-application container.

These parameters are also referenced in the docker-compose.yml file. So either leave as is or adjust everywhere accordingly.
