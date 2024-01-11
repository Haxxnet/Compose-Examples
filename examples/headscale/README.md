# References

- https://headscale.net/running-headscale-container/
- https://github.com/juanfont/headscale

# Notes

Please adjust the `docker-compose.yml` as well as `config.yaml` and adjust the `example.com` domain name. Also put the provided `config.yaml` into the corresponding config bind volume mount.

Afterwards spawn the container stack with `docker compose up` and visit `https://<your-domain>.<tld>/web`

You must configure an API key in order to access and manage your headscale server. 

You can create those using docker exec:

````
# create an api key
docker exec headscale headscale apikeys create
````

Afterwards, your headscale server should be managable.

1. Create a new user account on your headscale web interface
2. Download the official tailscale clients and spawn up tailscale pointing to your custom headscale login server. You'll obtain a unique device key or register url.
3. Browse the device view at your headscale web interface and create a new device. Select your previously created user account and define the previously obtained device key from the tailscale client.
4. If registering the new device was successful, the tailscale client will automatically connect. Enjoy!

Note: You may use preauth keys instead to skip the device registering process. Read the official headscale documentation please.


````
# connect via linux tailscale client
sudo tailscale up --login-server https://headscale.example.com
````
