# minitab-int-api
An numerical processing API program for the Minitab coding interview

## Docker container startup
- First, build the image
    - Tag it with some image name with `-t`
        - For example, `-t minitab-api` tags the image with the name `minitab-api`
    - Run: `docker build -t minitab-api .`
- Once built, run the container
    - This used the `docker run` header
    - Make sure to match the **image name** you used above, in this case `minitab-api`
    - You can also give the running container a **container name**, ex `api-app`
    - Ports:
        - `-d <external-port-num>:<internal-port-num>`
        - ex. `-d 8080:80` maps external port 8080 to internal port 80
    - Run `docker run --name api-app minitab-api`
- Then, you can enter the container
    - This uses the `docker exec` command
    - Match the **container name** from the `run` command
    - Ex. `docker exec -it api-app /bin/bash`