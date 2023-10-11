# Use Tomcat base image
FROM tomcat:9.0-jdk11

# Remove existing apps in Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat webapps directory
COPY ./part2.war /usr/local/tomcat/webapps/part2.war

# Expose port
EXPOSE 80

# Start Tomcat server
CMD ["catalina.sh", "run"]
