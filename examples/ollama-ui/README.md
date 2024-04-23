# References

- https://github.com/ollama/ollama
- https://hub.docker.com/r/ollama/ollama
- https://github.com/open-webui/open-webui

# Notes

You can spawn Ollama first and then download the [respective LLM models](https://ollama.com/library) via docker exec. Alternatively, spawn the whole stack directly and download LLM models within Open WebUI using a browser.

````
# spawn ollama and ui
docker compose up -d

# (optional) download an llm model via docker exec
docker exec ollama ollama run llama3:8b
````

Afterwards, we can browse Open WebUI on `http://127.0.0.1:8080` and register our first user account. You may want to disable open user registration later on by uncommenting the env `ENABLE_SIGNUP` variable and restarting the Open WebUI container.

> [!TIP]
>
> You likely want to pass a GPU into the Ollama container. Please read [this](https://hub.docker.com/r/ollama/ollama).
