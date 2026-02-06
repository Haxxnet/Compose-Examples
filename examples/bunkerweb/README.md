# BunkerWeb (Basic Setup)

[BunkerWeb](https://www.bunkerweb.io) is a next-generation Web Application Firewall (WAF).
This example implements the **Basic Setup** using:
*   **BunkerWeb**: The core WAF and reverse proxy.
*   **Scheduler**: Manages configuration and jobs.
*   **UI**: Web administration interface (internal).
*   **MariaDB**: Database storage.
*   **Valkey**: High-performance key-value store (used for caching/stats, replacing Redis).
*   **App**: A demo application (`bunkerity/bunkerweb-hello`) labeled as `app`.

## Usage

The provided `compose.yaml` follows the official Quickstart Guide. The configuration is primarily managed **via the Web UI**.

### 1. Start the Services

```bash
docker compose up -d
```

### 2. Access the Setup Wizard

Since `SERVER_NAME` is empty, BunkerWeb will initially route traffic to the **Setup Wizard**.

1.  Open your browser and navigate to `http://localhost/setup` (or `http://<your-server-ip>/setup`).
    *   *Note: Access via port 80/443 (HTTP/HTTPS) handled by the `bunkerweb` container.*
2.  Follow the wizard to create an administrator account.
3.  **Important**: When asked for the **Server Name** inside the wizard, enter `localhost` (or your domain).
    *   This domain will be used to access the Web UI from now on.

### 3. Configure the Application Service

Once logged into the Web UI:

1.  Go to the **Services** tab to create a new service.
2.  **Domain**: `localhost` (or the domain you configured).
    *   *Note: If you use the same domain as the UI, BunkerWeb manages the routing (UI path vs App path).*
3.  **Upstream HTTP Host**: `http://app:80`
4.  **Upstream Path**: `/`
5.  Save the configuration.

### 4. Verify

*   Access your protected application at `http://localhost`.

## Notes

*   **Passwords**: The default password is set to `changeme` in the `compose.yaml`. **Change this immediately** for any serious usage.
*   **Valkey**: This setup uses [Valkey](https://valkey.io/) (an open-source Redis fork) as recommended for recent BunkerWeb versions.
*   **Networks**: 
    *   `bw-universe`: For internal communication between BunkerWeb components.
    *   `bw-services`: For connecting the WAF to your applications (like `app`).
    *   `bw-db`: Dedicated network for database access.
