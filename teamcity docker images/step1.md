The first thing is set up teamcity server. We need to pull the server image from the docker hub repository.
```
docker pull jetbrains/teamcity-server
```
We can view the images on the machine using this command
```
docker images
```

```
docker run -it --name server -v teamcity/data:/data/teamcity_server/datadir -v teamcity/logs:opt/teamcity/logs -p 8111:8111 jetrains/teamcity-server
```