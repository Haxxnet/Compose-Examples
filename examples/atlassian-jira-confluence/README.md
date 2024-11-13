# References

- https://atlassian.github.io/data-center-helm-charts/containers/JIRA/
- https://atlassian.github.io/data-center-helm-charts/containers/CONFLUENCE/
- https://hub.docker.com/r/atlassian/jira-core
- https://hub.docker.com/r/atlassian/confluence

# Notes

The Jira Core container requires a database.

The compose stack will spawn up a postgresql database for this. You can configure the database connection from Jira's setup wizard via the HTTP UI.

May use a dedicated `.env` file to provide your custom DB credentials. Ensure to use secure passwords!
