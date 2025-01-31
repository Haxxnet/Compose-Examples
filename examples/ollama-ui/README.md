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


## Windows WSL 2 Setup

1. Enable `Nested/Hardware Virtualization` in your BIOS
2. Install Nvidia drivers for Windows
3. Install Docker Desktop for Windows

Then open an administrative PowerShell and proceed as follows:

````
# install wsl
wsl --install

# configure wsl 2 as default
wsl --set-default-version 2

# install ubuntu
wsl --install -d ubuntu
````

After Ubuntu installation, you are prompted for a `username` and `password`.

Afterwards, you will find youself in a Ubuntu terminal.

## Windows Docker Desktop Setup

Open Docker Desktop and enable WSL 2 via the setting `Use WSL 2 based engine`:

![image](https://github.com/user-attachments/assets/85d1270a-80f9-4801-b388-81372af19f43)

Then open `Resources > WSL Integration` and enable Docker for your Ubuntu WSL VM(s):

![image](https://github.com/user-attachments/assets/5b3c7ff2-d865-4e43-b867-cc931516c5d9)

## WSL 2 Ubuntu Setup

After Docker Desktop adjustments, return to the PowerShell with your Ubuntu terminal.

Proceed in Ubuntu terminal with the following commands from [Ollama documentation](https://hub.docker.com/r/ollama/ollama):

````
# add repo
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey \
    | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg
curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list \
    | sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' \
    | sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
sudo apt-get update

# install nvidia container toolkit
sudo apt-get install -y nvidia-container-toolkit

# add your user to docker group
sudo usermod -aG docker <your-username>
newgrp docker

# test docker and compose
docker -v
docker compose -v
````

> [!WARNING]
> You likely have to restart Docker Desktop and re-open the Ubuntu WSL VM

Now you can make use of Docker in your WSL 2 Ubuntu VM.

1. Store the `docker-compose.yml` from this repo into your WSL 2 Ubuntu VM
2. Start the Docker stack consisting of Ollama and OpenWebUI

````
docker compose up -d
````

Afterwards, you can open a web browser of your choice on your Windows and browse `http://127.0.0.1:8080`.

You will be greeted by OpenWebUI and must setup your administrative user account.

Afterwards:
1. Browse the settings at `http://127.0.0.1:8080/admin/settings`
2. Visit the `Connections` area
3. Disable `OpenAI API`
4. Click the `Manage` download button at Ollama and download your preferred models (see https://ollama.com/library)

![image](https://github.com/user-attachments/assets/a3b03885-3605-439e-9536-82f1933aa5b1)

Unsure which Deepseek R1 model your GPU can run? Read this [Reddit post](https://www.reddit.com/r/LocalLLaMA/comments/1i5wahr/comment/m8wi5tl/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button).

Here my results on Windows 11 with RTX 3080 Ti 12GB VRAM
![image](https://github.com/user-attachments/assets/e8886bfd-65f8-498d-b0e0-db68700352a5)
