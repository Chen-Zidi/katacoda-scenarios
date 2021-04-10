mkdir -p teamcity
mkdir teamcity/data
mkdir teamcity/logs
mkdir teamcity/agent

chown -R 1000:1000 teamcity/data
chown -R 1000:1000 teamcity/logs
chown -R 1000:1000 teamcity/agent