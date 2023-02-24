# References

- https://hub.docker.com/r/linuxserver/nextcloud

# Notes

If you plan on using a reverse proxy, you will have to define your domain or subdomain as trusted proxy domain.

The relevant nextcloud configuration file to define this is located at:

````
/<your-volume-path>/config/www/nextcloud/config/config.php
````

Adjust the PHP file and put in your subdomains as trusted. Something like this:

````
<?php
$CONFIG = array (
  ...
  'trusted_domains' => 
  array (
    0 => 'nextcloud.example.com',
    1 => 'nextcloud.anotherdomain.com',
  ),
  'dbtype' => 'sqlite3',
  ...
);
````
