FROM ubuntu:latest
LABEL description="Valgrind_Mac_42_Extension"
RUN apt-get -y update && apt-get -y upgrade \
  && apt-get -y install vim build-essential git-core cmake make clang gcc valgrind libxext-dev libbsd-dev xorg \
  && 'man-db' \
    'less' \
    'libtool-bin' \
    'gdb' \
    'make' \
    'ca-certificates' \
    'g++' \
    'libtool' \
    'pkg-config' \
    'manpages-dev' \
    'zip' \
    'unzip' \
    'python3' \
    'python3-pip' \
    'git' \
    'openssh-server' \
    'dialog' \
    'llvm' \
    'clang' \
    'curl' \
    'wget' \
    'zsh' \
    'vim' \
    'moreutils' \
    # Push Swap Projects
    'python3-tk' \
    'ruby' \
    'bc' \
    'htop' \
    # Minishell Projects
    'libreadline-dev' \
    # Minilibx Projects
    'libx11-dev' \
    # IRC Project Test Example
    'irssi' \
    'netcat' \
    'tcpdump' \
    'net-tools' \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
  
# 42 Norminette
RUN python3 -m pip install --upgrade pip setuptools && python3 -m pip install norminette 
  
WORKDIR /home

# Export Display for XServer Forwarding
RUN echo "export DISPLAY=host.docker.internal:0.0" >> /root/.bashrc && echo "export DISPLAY=host.docker.internal:0.0" >> /root/.zshrc

# Reset dialog frontend
ENV DEBIAN_FRONTEND=dialog
