FROM ci_java_ant:8
RUN mkdir -p /home/resource/
COPY ./src/demo-resource/ /home/resource/ 
