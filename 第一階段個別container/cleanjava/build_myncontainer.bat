rem #make inmage(java_maven)
docker build -f config -t cleanjavaimage .
pause
rem make container
rem # docker run  --name=cleanjavacontainer --volume maven-repo:/maven-repo -dit cleanjavaimage /bin/sh

docker run  --name=cleanjavacontainer --volume maven-repo:/maven-repo -d cleanjavaimage 
pause

rem # make pom
rem # =>command = mvn archetype:generate
rem # self setting
rem # groupId = Johnson2023