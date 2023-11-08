FROM ubuntu:20.04
RUN apt update
RUN apt install -y python3-pip 
# -y is for Yes if a question appears
