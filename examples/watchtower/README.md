# References

- https://github.com/containrrr/watchtower
- https://containrrr.dev/watchtower/

# Notes

Running multiple Watchtower instances is only possible by using scope definitions. Please read [here](https://containrrr.dev/watchtower/running-multiple-instances/). Otherwise, any new Watchtower container will remove and clean up older instances.

> [!TIP]
> The provided compose examples make use of a separate socket-proxy container.
> 
> Socket Proxy is a security-enhanced proxy, which allows you to apply access rules to the Docker socket, limiting the attack surface for containers such as Watchtower that need to use it.
