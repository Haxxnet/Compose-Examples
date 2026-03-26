# References

- https://github.com/go-gitea/gitea

# Notes

After spawning up Gitea, it's recommended to adjust the configuration file `/mnt/docker-volumes/gitea/data/gitea/conf/app.ini`.

https://docs.gitea.com/administration/config-cheat-sheet

Typical configuration adjustments:

````markdown
[service]
# Allow user registration (only via external auth because of setting below)
DISABLE_REGISTRATION = false
# Allow anonymous users to view public content without login
REQUIRE_SIGNIN_VIEW = false
# Do not require email confirmation on signup (potential security risk)
REGISTER_EMAIL_CONFIRM = false
# Enable email notifications (issues, PRs, etc.)
ENABLE_NOTIFY_MAIL = true
# Only allow registration through external providers (OAuth/SSO)
# Local username/password signup is disabled
ALLOW_ONLY_EXTERNAL_REGISTRATION = true
# Enable CAPTCHA (mainly relevant for local registration)
ENABLE_CAPTCHA = true
# Hide user email addresses by default
DEFAULT_KEEP_EMAIL_PRIVATE = true
# Prevent users from creating organizations by default
DEFAULT_ALLOW_CREATE_ORGANIZATION = false
# Enable time tracking features in repositories by default
DEFAULT_ENABLE_TIMETRACKING = true
# Default "noreply" email address for commits
NO_REPLY_ADDRESS = noreply.localhost
# Hide the "Register" button in the UI
SHOW_REGISTRATION_BUTTON = false
# Disable public user directory (/explore/users)
DISABLE_USERS_PAGE = true
# Disable passkey (WebAuthn) authentication
ENABLE_PASSKEY_AUTHENTICATION = false
# Default visibility for new users:
# public  = visible to everyone
# limited = only visible to logged-in users
# private = only visible to the user and admins
DEFAULT_USER_VISIBILITY = limited

[openid]
# Disable OpenID login
ENABLE_OPENID_SIGNIN = false
# Disable OpenID-based registration
ENABLE_OPENID_SIGNUP = false

[repository]
# Maximum number of repositories a user can create
MAX_CREATION_LIMIT = 100
# Prevent automatic repo creation via git push (user namespace)
ENABLE_PUSH_CREATE_USER = false
# Prevent automatic repo creation via git push (org namespace)
ENABLE_PUSH_CREATE_ORG = false
# Default visibility for new repositories
DEFAULT_PRIVATE = private
# Do not force all repositories to be private
# (users could still create public ones if allowed elsewhere)
FORCE_PRIVATE = false
````

## Act Actions

In case you want to use a local Gitea Act runner, you must enable Gitea Actions via the configuration file. 

Please add the following sections to your `app.ini` file:

````markdown
[actions]
ENABLED=true
````
