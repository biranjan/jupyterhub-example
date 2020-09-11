# jupyterhub-example
Deploy multiuser container with docker spawner modiffie from [here](https://github.com/jupyterhub/jupyterhub-deploy-docker)

- first build the notebook image from notebook-image folder (this image is spawned for every user)
- create the docker volume and network (docker compose will tell you to do it if it can't find network and volume)
- finally docler-compose up
- in order to log in one has to chage the password for whitelisted user in jupyterhub_confi file from inside the container (passwd test)
