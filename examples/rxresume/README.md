# Reference

https://github.com/AmruthPillai/Reactive-Resume

# Notes

Make sure that you expose both the client and server container behind the same (sub)domain, which is properly resolvable. Otherwise, you'll either receive DNS or CORS errors, as the domain cannot be resolved by the containers properly or since the Same Origin Policy (SOP) will prevent access from Domain A (client) to Domain B (server). So let both containers run on the same domain and tell your reverse proxy (here traefik) that the server container will handle all /api requests.

If PDF export keeps failing, you may want to enable the `extra_hosts` definition in the client's Docker Compose service definition. Specify your domain name and your server's IP address where Traefik is listening on TCP/80 and TCP/443. See this GitHub issue [here](https://github.com/AmruthPillai/Reactive-Resume/issues/721#issuecomment-1530550167). 

Also ensure to create a new resume always as soon as you've changed your setup or the Docker Compose file. Older resumes may introduce previous errors, which are false positives and only occur for the old resume.

If you use Nginx Proxy Manager as reverse proxy, may have a read [here](https://github.com/AmruthPillai/Reactive-Resume/issues/721#issuecomment-1405283786).
