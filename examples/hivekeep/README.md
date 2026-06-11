# References

- https://github.com/MarlBurroW/hivekeep
- https://hivekeep.app

# Notes

Hivekeep is a self-hosted platform of autonomous, persistent personal AI agents. Agents collaborate, keep long-term memory, build their own tools, and are reachable via Telegram, WhatsApp, Slack, Discord, Signal and Matrix.

Everything runs in a single container with Bun and SQLite. No external database or message broker is required. All state lives in the mounted data volume.

After starting the container, open your browser on port 3000. The built-in setup agent (Queenie) walks you through connecting AI providers and creating your first agents. Secrets are stored in an AES-256-GCM encrypted vault.
