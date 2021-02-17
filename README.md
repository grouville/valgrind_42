# valgrind_42
Dockerfile that includes Valgrind, Vim and Clang for corrections

This Dockerfile will be very usefull when you want to use Valgrind. As you may have realized, Valgrind doesn't work on newer versions of Mac OS, that's why this Dockerfile exists.

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
$ docker run -d -it -v `pwd`:/valgrind/ --name $USER-valgrind $(whoami)/valgrind
# Then, on another terminal/ window, you can run this command, which will connect a shell inside the container :
$ docker exec -it $USER-valgrind bash

# You can check the status of the containers with this command (on your host machine) :
$ docker ps
> CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
> 2f41454ac0b9        home/valgrind       "/bin/bash"         13 minutes ago      Up 13 minutes                           eager_einstein


```

**<u>For graphical projects needing to open a window</u>**

Please follow the next steps so that your docker image can open windows.

1. Launch XQuartz (software is already installed in 42's sessions)
2. Go to XQuartz > Preferences... > Security tab, and check the "Allow connections from network clients" option
3. Quit & restart XQuartz (to activate the setting)
4. Enable authorisation for localhost for X11 forwarding by entering in a shell (on the host not the docker image)
```bash
$ xhost + 127.0.0.1
```
