# Reference

https://github.com/AmruthPillai/Reactive-Resume

# Notes

Make sure that you expose both the client and server container behind the same (sub)domain. 

Otherwise, you'll receive CORS errors, as the Same Origin Policy (SOP) will prevent access from Domain A (client) to Domain B (server). 

So let both run on the same domain and tell your reverse proxy (here traefik) that the server container will handle all /api requests.

If you use Nginx Proxy Manager as reverse proxy, may have a read [here](https://github.com/AmruthPillai/Reactive-Resume/issues/721#issuecomment-1405283786).
