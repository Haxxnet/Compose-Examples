# References

- https://github.com/nextcloud/docker
- https://hub.docker.com/r/linuxserver/nextcloud

# Notes

If you plan on using a reverse proxy, you will have to define your domain or subdomain as trusted proxy domain.

The relevant nextcloud configuration file to define this is located at:

````
# linuxserver image
/<your-volume-path>/config/www/nextcloud/config/config.php

# official nextcloud image
/<your-volume-path>/nextcloud/app/config/
````

Adjust the PHP file and put in your subdomains at `trusted_domains` as well as trusted proxy IPs at `trusted_proxies`. Also set `overwriteprotocol` to `https` and may define a maintenance window via `maintenance_window_start`.

Something like this:

````
<?php
$CONFIG = array (
  ...
  'trusted_domains' => 
  array (
    0 => 'nextcloud.example.com',
    1 => 'nextcloud.anotherdomain.com',
  ),
  'trusted_proxies' => 
  array (
    0 => ['10.0.0.0/8'],
    1 => ['172.16.0.0/12'],
    2 => ['192.168.0.0/16'],
  ),
  'overwriteprotocol' => 'https',
  'maintenance_window_start' => 1,
  ...
);
````
