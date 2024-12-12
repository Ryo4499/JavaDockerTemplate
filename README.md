# JavaDockerTemplate

This is a Java Docker Template.  
The container is bind on specified a local machine user by `.env` file.  
Also, this directory bind to volumes.  

Base Images:

- <https://hub.docker.com/_/openjdk>

## How to use

```sh
git clone $REPO_URL
cd JavaDockerTemplate
cp .env.sample .env
# Specify your environments
vi .env
docker compose build
docker compose up -d
docker compose exec app sh
docker compose down
```
