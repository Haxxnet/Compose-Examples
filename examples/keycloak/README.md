# References

- https://github.com/keycloak/keycloak
- https://www.keycloak.org/getting-started/getting-started-docker

# Notes

````
# copy example env file
cp env.example .env

# adjust env to your needs
# adjust the compose.yml to your needs
nano .env
nano docker-compose.yml

# create docker networks
docker network create proxy
docker network create keycloak-internal

# spawn the stack
docker compose up -d
````
