# References

- https://github.com/nextcloud/docker
- https://hub.docker.com/r/linuxserver/nextcloud

# Notes

If you plan on using a reverse proxy, you will have to adjust Nextcloud's `config.php` configuration file.

The configuration file is located at:

````
# linuxserver image
/<your-volume-path>/config/www/nextcloud/config/config.php

# official nextcloud image
/<your-volume-path>/nextcloud/app/config/config.php
````

Within this configuration file, you should adjust the following:

- `trusted_domains` with your domain and subdomain names
- `trusted_proxies` with the IP address of your reverse proxy (defined as array)
- `overwriteprotocol` set to `https` to force encrypted https protocol communication
- `maintenance_window_start` to remove warnings in nextcloud's security scan
- `default_phone_region` to remove warnings in nextcloud's security scan

Adjust the PHP file like follows:

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
  'default_phone_region' => 'DE',
  ...
);
````
After adjusting, restart the Nextcloud container.
