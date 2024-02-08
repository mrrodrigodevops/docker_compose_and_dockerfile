# Use the official Jenkins base image with JDK 17
FROM jenkins/jenkins:2.443-jdk17

# Switch to root user for installation
USER root

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3-venv

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Activate the virtual environment
ENV PATH="/opt/venv/bin:$PATH"

# Upgrade pip inside the virtual environment
RUN /opt/venv/bin/python -m pip install --upgrade pip

# Install AWS CLI inside the virtual environment
RUN /opt/venv/bin/pip install --upgrade awscli

# Switch back to the Jenkins user
USER jenkins