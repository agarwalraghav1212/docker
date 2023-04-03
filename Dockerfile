FROM centos:7

# Update the base image and install necessary packages
CMD ["yum", "update" ]

# Install additional packages as needed
RUN yum -y install httpd

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Expose any required ports
EXPOSE 8080

# Define the command to start the container
#CMD ["<command-to-start-the-application>"]
