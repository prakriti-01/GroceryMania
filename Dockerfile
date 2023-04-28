FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
# COPY grocerymaniamain.jar grocerymaniamain.jar
EXPOSE 3033
EXPOSE 5005
# ENTRYPOINT exec java $JAVA_OPTS -jar grocerymaniamain.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar grocerymaniamain.jar
# Specify the base image

# FROM node:14-alpine

# # Set the working directory
# WORKDIR /app

# # Copy the package.json and package-lock.json files
# COPY settings.json ./

# # Install dependencies
#  RUN npm install

# # Copy the application code
COPY . .

# # Expose port 3000
# EXPOSE 3000

# # Start the application
#  CMD ["npm", "start"]
# Use an official Nginx runtime as a parent image
 FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the static website files to the container's working directory
 COPY . .


