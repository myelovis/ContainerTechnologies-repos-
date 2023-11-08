FROM third_dockerfile:latest
# Force into noninteractive mode, and not ask any question during building
ARG DEBIAN_FRONTEND=noninteractive 

RUN  apt install -y openssh-server

# Ask a password for our container
RUN echo 'root:password' | chpasswd

# Change ubuntu root config in away that it accept access:
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN service ssh start 
# Port 22
EXPOSE 22 

CMD ["/usr/sbin/sshd", "-D"]

# ~/ContainerTechnologies/repos/containers/ssh-docker$ sudo docker run -p 22:22 ssh-docker
# ~/ContainerTechnologies/repos/containers/ssh-docker$ ssh root@0.0.0.0

# IF you cannot access wit error of SHA256 "the fingerprint for ESDSA key sent by the remote host is..."
# cd .ssh/
# ls
# rm known_hosts 
# >> reaccess, it will ask you again the fingerprint, and you can pass