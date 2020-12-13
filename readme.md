- Run a container
> docker run docker/whalesay cowsay boo

- List Of Running Containers
> docker ps
> docker ps -a

- stop container
> docker stop container_name

- Remove Container
> docker rm <heuristic_visvesvaraya>(Container Name)

- List of Downloaded Images
> docker images

- Remove Docker
> docker rmi docker/whalesay


- Pull if not exist and run
> docker run nginx

- only pull don't run
> docker pull nginx

- append command and run container
> docker run ubuntu sleep 5

- execute command in running conainer
> docker ps
> docker exec heuristic_visvesvaraya cat /etc/hosts


- run attach and detach
- Run in attached mode in console
> docker run kodekloud/simple-webapp
- Run in detached (background) mode
> docker run -d kodekloud/simple-webapp
- Attach later
> docker attach a043d


- docker tags (version)
> docker run redis:latest
> docker run redis:4.0

- docker interactive mode for input
> docker run -i kodekcloud/simple-prompt-docker
- INPUT: NAIMUR
- OUTPUT: Welcome Naimur!
> docker run -it kodekcloud/simple-prompt-docker
- What's your name?
- INPUT: NAIMUR
- OUTPUT: Welcome Naimur!


- PORT MAPPING
> docker run -p 80:5000 kodekcloud simple-webapp
- Explaination
- Docker Host Internal IP: 127.17.0.2:5000
- Browser Accesss Trhough 192.168.1.5:80

- Volumne Mapping
> docker run -v /opt/datadir:/var/lib/mysql mysql


- inspect container
> docker inspect blissful_container
- logs container
> docker inspect logs


- docker env variable
> docker run -e APP_COLOR=blue simple-color
- inside python flask
- color = os.environ.get('APP_COLOR')

- docker --links
>docker run -d --name=redis redis
>docker run -d --name=vote -p 5000:90 --link redis:redis voting-app


- docker build from Dockerfile
> docker build -t hello-world .
> docker build -t flaskapp -f Dockerfile .


- docker remove all containers
> docker container prune
> docker rm `docker ps --no-trunc -aq`
> FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i
> docker rm @(docker ps -aq)
