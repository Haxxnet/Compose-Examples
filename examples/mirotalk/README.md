# References

- https://github.com/miroslavpejic85/mirotalk

# Notes

You must use a reverse proxy and enable SSL to proxy to the container port TCP/3000. 

This is necessary as you are not allowed to run WebRTC on plaintext HTTP after Chrome 47+.

For testing purposes only, running MiroTalk on localhost (127.0.0.1) should work fine though.
