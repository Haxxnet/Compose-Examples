# References

- https://github.com/jurecki007/nyxiontech-tools
- https://tools.nyxiontech.com

# Notes

The container serves a static build on port 80, so the published port mapping differs from most
examples here. There are no volumes and no environment variables: nothing is written to disk at
runtime and there is nothing to configure after starting it.

Every tool runs in the browser, so no document is uploaded to the container. OCR is available in
English and Polish.

Images are published for linux/amd64 and linux/arm64.
