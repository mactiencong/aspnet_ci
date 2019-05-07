FROM ci_tomcat:8.5.40-jre8
COPY ./artifacts/*.war /usr/local/tomcat/webapps/
COPY ./artifacts/share-lib /usr/local/tomcat/shared-lib
COPY ./src/java8/catalina.properties /usr/local/tomcat/conf/ 
