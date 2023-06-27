FROM oraclelinux:8.4 
LABEL name=gnanasai
RUN dnf install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 maven git  -y 
RUN mkdir /gnanasai-project
WORKDIR /gnanasai-project
RUN git clone https://github.com/redashu/gnana-java-springboot.git
WORKDIR gnana-java-springboot
RUN mvn clean package
