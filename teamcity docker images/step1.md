

The first thing is to set up TeamCity Server. We need to pull the server image from the Docker Hub repository. This might need a few minutes.


```console
docker pull jetbrains/teamcity-server
```
We can view the images on the machine using this command
```console
docker images
```
The TeamCity Server should be listed.

Now, we can run this command to start a Docker container with TeamCity Server. 

```console
docker run -it --name server -u root -v /teamcity/data:/data/teamcity_server/datadir -v /teamcity/logs:/opt/teamcity/logs -p 8111:8111 jetbrains/teamcity-server

```

Here are some explanations of the command:
- `-it`: We want an interactive session with a pseudo terminal.
- `--name server`: We name this container "server". The name can be assigned as you like.
- `-u root`: To run the command under 'root' user. This can be removed in your local machine when you login in as the root user.
- `-v /teamcity/data:/data/teamcity_server/datadir`: We bound /teamcity/data folder in our machine with TeamCity Data Directory. When you execute the command on your own machine, please create or specify your own folder.
- `-v /teamcity/logs:/opt/teamcity/logs`:  We bound /teamcity/logs folder in our machine to store TeamCity logs. When you execute the command on your own machine, please create or specify your own folder.
- `-p 8111:8111`: This is a map of the port between our machine and the container. You can use this command as `-p <host port>:8111`, and specify your own perferred port on your local machine.
- `jetbrains/teamcity-server`: This is the name of the image.

This might also need a few minutes. After execution of the command, we can open http://[[HOST_SUBDOMAIN]]-8111-[[KATACODA_HOST]].environments.katacoda.com to see the page of TeamCity. In your local machine, you can open the browser and access to `localhost:<host port>` to see the page.  

We can use this command in a new terminal to see the running Docker container.

```
docker ps
```
