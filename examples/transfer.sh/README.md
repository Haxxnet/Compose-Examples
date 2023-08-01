# References

- https://github.com/dutchcoders/transfer.sh

# Notes

Ensure that the bind mount volume can be written by the container.

The provided container image uses `5000` as PUID and PGID as default. If you want to change those, you have to build the container image locally. Read [here](https://github.com/dutchcoders/transfer.sh#building-the-container) for more details.
