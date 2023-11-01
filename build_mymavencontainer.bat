rem #make inmage(java_maven)
docker build -f myjavaconfig -t javamavenimage .
pause
rem make container
docker run  --name=myjavacontainer  --volume maven-repo:/maven-repo -dit javamavenimage  bash
pause

rem # make pom
rem # =>command = mvn archetype:generate
rem # self setting
rem # groupId = Johnson2023