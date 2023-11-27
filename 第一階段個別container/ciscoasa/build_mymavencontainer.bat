rem #make inmage(java_maven)
docker build -f ciscoasaconfig -t myasaimage .
pause
rem make container
docker run  --name=myasacontainer  --volume maven-repo:/maven-repo -dit myasaimage  bash
pause

rem # make pom
rem # =>command = mvn archetype:generate
rem # self setting
rem # groupId = Johnson2023