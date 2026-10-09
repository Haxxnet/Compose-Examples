# References

- https://beszel.dev/
- https://github.com/henrygd/beszel

# Notes

Beszel is a lightweight server monitoring platform that includes Docker statistics, historical data, and alert functions.

The hub (this compose file) provides the web UI and communicates with agents installed on each monitored system. The agent can either be installed as a standalone binary or as a separate Docker container (see the Beszel docs for agent setup options).

After starting the hub, create your admin account by visiting `http://localhost:8090` and navigating through the initial setup. Then add your systems via the dashboard and deploy the agent on each host you want to monitor.

> [!NOTE]
> Make sure the agent port (default `45876`) is reachable from the Beszel hub. For agent-only deployments on the same host, see the `extra_hosts` approach documented upstream.
