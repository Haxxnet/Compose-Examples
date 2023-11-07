# References

- https://github.com/evershopcommerce/evershop
- https://evershop.io/docs/development/getting-started/installation-guide

# Notes

After spawning up the docker containers, the webshop will be available on http://127.0.0.1:3000.

You can access the admin dashboard at /admin. You must create a new admin user by Docker exec as follows:

````
# exec into the evershop container
docker exec -it evershop sh

# creating a new admin user
npm run user:create -- --email "myemail@example.com" --password "MySuperSecurePassword" --name "MyName"
````