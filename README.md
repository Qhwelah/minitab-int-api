# minitab-int-api
An numerical processing API program for the Minitab coding interview

## Docker Container Management
### Startup
- First, build the image
    - Use `docker build -t <image-tag> <path-to-build-context>` 
    - Tag image with some name with `-t` flag
        - For example, `-t minitab-api` tags the image with the name `minitab-api`
    - ex. `docker build -t minitab-api .`
- Once built, run the container
    - Use `docker run --name <container-name> [other-tags] <image-name>`
        - Make sure to match the **image name** you used above, in this case `minitab-api`
        - Can give the running container a **container name** with the flag `--name <container-name>`, ex `api-app`
        - Port allocations:
            - uses the tag `-p <external-port-num>:<internal-port-num>`
            - ex. `-d 8080:80` maps external port 8080 to internal port 80
        - Use `-d` tag to run in background
    - ex. `docker run --name api-app -p 80:80 -d minitab-api`

### Interfacing
- To see all active containers, use `docker ps`
- To see all containers (active or not) use `docker ps -a`
- After startup, you can enter the container
    - Use `docker exec -it <container-name> <command-for-in-container>`
    - Match the **container name** from the `run` command
    - ex. `docker exec -it api-app /bin/bash`
- To exit a container, simply use `exit`

### Shutdown
- To shut down the container safely:
    - Use `docker stop <container-name>`
    - ex. `docker stop api-app`
- To force shutdown:
    - Use `docker kill <container-name>`
    - ex. `docker kill api-app`
- To delete the container:
    - First, stop the container.
    - Then use `docker rm <container-name>`
    - ex. `docker rm api-app`

## Hosts
- Note that host `127.0.0.1` is localhost, but only for THAT container
    - This is not forwarded to other spaces.
- But host `0.0.0.0` is localhost that is allowed to be forwarded to other spaces.
    - So host `0.0.0.0` in container forwarded by docker to outer machine `0.0.0.0` actually receives a response. 
- This also means that curling `http://127.0.0.1:80/` on the host machine will work if `0.0.0.0` is active in the container
    - Since the containers localhost is forwarded to the host machine, since the host machine's localhost is NOT forwarded anywhere.