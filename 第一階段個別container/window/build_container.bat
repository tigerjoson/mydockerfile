rem #make inmage(winimage) with winconfig
rem # . =>the position of winconfig 

docker build -f winconfig -t winimage .
pause
rem make container
docker run  --name=wincontainer  --volume maven-repo:/maven-repo -d winimage  
rem docker run  --name=wincontainer  --volume maven-repo:/maven-repo -dit winimage  bash
pause
