# Use Tomcat base image
FROM tomcat:9.0-jdk15

# Set working directory
WORKDIR /usr/local/tomcat

# Remove existing apps in Tomcat
RUN rm -rf ./webapps/*

# Copy WAR file into Tomcat webapps directory
COPY part2.war ./webapps/part2.war

# Expose port
EXPOSE 80

# Start Tomcat server
CMD ["catalina.sh", "run"]
