rem #make inmage(mongoimage) with mongoconfig
rem # . =>the position of mongoconfig 

docker build -f mongoconfig -t mongoimage .
pause
rem make container
docker run  --name=mongocontainer  --volume maven-repo:/maven-repo -dit mongoimage  /bin/sh
rem docker run  --name=mongocontainer  --volume maven-repo:/maven-repo -dit mongoimage  bash
pause
