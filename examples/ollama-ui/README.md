# References

- https://github.com/ollama/ollama
- https://hub.docker.com/r/ollama/ollama
- https://github.com/open-webui/open-webui

# Notes

You can spawn ollama first and then download the [respective LLM models](https://ollama.com/library) via docker exec. Alternatively, spawn the whole stack directly and download LLM models within Open WebUI using a browser.

````
# spawn ollama
docker compose up -d ollama

# download an llm model via docker exec
docker exec ollama ollama run llama3:8b
````

Afterwards, we can spawn Open WebUI and register our first user account:

````
# spawn ui
docker compose up -d ui
````

Finally, we may want to disable open user registration for Open WebUI by uncommenting the env `ENABLE_SIGNUP` variable and restarting the container.

> [!TIP]
>
> You likely want to pass a GPU into the Ollama container. Please read [this](https://hub.docker.com/r/ollama/ollama).
