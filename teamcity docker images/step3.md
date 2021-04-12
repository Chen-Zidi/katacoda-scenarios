

After configuring the project and the build step, we need to create a TeamCity Agent to spawn the build process. 

Open a new terminal and run this command to pull TeamCity Agent Image:
```
docker pull jetbrains/teamcity-agent
```

Then, we can start a Docker container with TeamCity Agent which tries to connect with the TeamCity Server.
```console
docker run -it -e SERVER_URL="http://server:8111" --link server -u root -v /teamcity/agent:/teamcity_agent/conf jetbrains/teamcity-agent
```
In this command:
- `-e SERVER_URL="http://server:8111"`: Set the environment variable `SERVER_URL`.
- `--link server`: Add link to the server container.
- `-v /teamcity/agent:/teamcity_agent/conf`: Specify the path of the agent config folder.
- `jetbrains/teamcity-agent`: This is the name of the image.
