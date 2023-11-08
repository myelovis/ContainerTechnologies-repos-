FROM ubuntu:20.04
# Who is responsible for what
LABEL maintainer="Lovisa Nguyen" email="lovisa.nguyen@proton.fi"
# Next, can be: RUN, INSTALL, EXCUTE
RUN echo "hello world" >> helloworld.txt
# RUN is for building a new image
CMD cat helloworld.txt 
# CMD is when we start an container form image, it takes what it already 'know'
# and install into the system

# May having many RUN command lines, but only one CMD command line