# valgrind_42
Dockerfile that includes Valgrind, Vim and Clang for corrections

This Dockerfile will be very usefull when you want to use Valgrind. As you may have realized, Valgrind doesn't work on the new versions of Mac OS, that's why we made a Dockerfile for you.

**<u>How to use this git ?</u>**



> Prerequisite : Run the docker app present in your Mac (or MSC)

```bash
$ git clone https://github.com/grouville/valgrind_42.git
$ cd valgrind_42
# This command creates the image with the latest Ubuntu. You'll only have to run this command the first time !
$ docker build -t $(whoami)/valgrind .
# We need to go to the directory of the project we want inside the container
$ cd PATH_TO_PROJECT
# This command runs the container, with the content of the current folder in the /valgrind PATH inside the container
$ docker run -d -it -v `pwd`:/valgrind/ $(whoami)/valgrind
# We need to find the id of the running container with our name :
$ docker ps
> CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
> 2f41454ac0b9        home/valgrind       "/bin/bash"         13 minutes ago      Up 13 minutes                           eager_einstein

# Then, on another terminal/ window, you can run this command, which will connect a shell inside the container :
$ docker exec -it 2f41454ac0b9 bash
# You can replace 2f41454ac0b9 by your container id
```

