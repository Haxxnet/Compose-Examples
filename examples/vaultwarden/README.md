# References

- https://github.com/dani-garcia/vaultwarden
- https://github.com/Bruceforce/vaultwarden-backup

# Notes

Disable open user registration after setting up your account. This can be done via the `/admin` web panel, if enabled, or by adjusting the `config.json` file. Alternatively via environment variables. See documentation [here](https://github.com/dani-garcia/vaultwarden/wiki/Disable-registration-of-new-users).

⚠️ Note: The WebSockets service for live sync has been integrated in the main HTTP server, which means simpler proxy setups that don't require a separate rule to redirect WS traffic to port 3012. Please check the updated examples in the [wiki](https://github.com/dani-garcia/vaultwarden/wiki/Proxy-examples). It's recommended to migrate to this new setup as using the old server on port 3012 is deprecated, won't receive new features and will be removed in a future release.
