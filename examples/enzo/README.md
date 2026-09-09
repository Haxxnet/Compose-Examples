# References

- https://github.com/theguysudo/ENZO
- https://github.com/theguysudo/ENZO/pkgs/container/enzo

# Notes

ENZO is a self-hosted, bring-your-own-key AI workspace: multi-provider chat (Groq, OpenRouter, NVIDIA, Google AI, Hugging Face), a plain-English agent builder, scheduled agent runs, and skills like web search, Gmail, and Google Calendar.

Provider API keys are pasted in the web UI after first boot and sealed client-side (AES-256-GCM) — the server only relays requests, it never stores keys in readable form. No API keys or environment variables are required to start the stack; the first key you paste in the UI unlocks the features.

````
# spawn enzo
docker compose up -d
````

Afterwards, browse ENZO on `http://127.0.0.1:5001` and walk through the onboarding, which asks for one provider API key (free tiers work, e.g. Google AI Studio or Groq). All model calls then run on your own provider keys.

> [!NOTE]
> The container runs as the unprivileged `node` user (UID 1000). Make sure the volume bind mounts are owned by `1000:1000` so the app can write its data, generated projects, and learned skills.
