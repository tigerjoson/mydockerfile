rem #make inmage(java_maven)
docker build -f cloudconfig.txt -t googleimg .
pause
rem make container
rem # docker run  --name=googlecintainer --volume maven-repo:/maven-repo -dit googleimg /bin/sh

docker run  --name=googlecintainer --volume maven-repo:/maven-repo -d googleimg 
pause

rem # make pom
rem # =>command = mvn archetype:generate
rem # self setting
rem # groupId = Johnson2023