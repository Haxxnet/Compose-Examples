# References

- https://github.com/happysnaker/qq-ai-bot
- https://happysnaker.github.io/qq-ai-bot/
- https://github.com/NapNeko/NapCatQQ

# Notes

This stack mirrors the public `qq-ai-bot` Docker demo and keeps **NapCat + qq-ai-bot** together so you can validate a full **QQ → OneBot 11 → ACP agent** chain on one host.

The included `.env` runs the built-in mock ACP agent by default. That is enough to verify reverse WebSocket wiring, session reuse, progress streaming, and bot commands before wiring in your own local model or agent runtime.

````
# start stack
docker compose up -d

# follow bot logs
docker logs -f qq-ai-bot

# stop stack
docker compose down
````

Then:

1. Browse `http://127.0.0.1:6099/webui`
2. Sign in with the WebUI token from `docker-compose.yml` (`napcat` by default)
3. Log in your QQ account inside NapCat
4. Send `/ping` or `/status` to the bot

If you want to set a OneBot access token, use the same value in both `.env` (`ONEBOT_ACCESS_TOKEN`) and `napcat.onebot11.reverse-ws.json` (`websocketClients[0].token`).

> [!TIP]
>
> If you want a real local model or agent instead of the bundled mock agent, replace `ACP_AGENT_COMMAND`, `ACP_AGENT_ARGS_JSON`, and `ACP_AGENT_WORKDIR` in `.env` with your own ACP-compatible runtime.

> [!NOTE]
>
> The bot exposes `http://127.0.0.1:18080/readyz`, `http://127.0.0.1:18080/status`, and `http://127.0.0.1:18080/metrics` for quick health and observability checks.
