# Use the official Jenkins base image with JDK 17
FROM jenkins/jenkins:2.486-jdk17

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

# Set environment variables for the Jenkins user
ENV PATH="/opt/venv/bin:$PATH"

#RUN ssh -T git@bitbucket.org
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY .known_hosts /root/.ssh/known_hosts
RUN chmod 600 /root/.ssh/known_hosts

# Switch back to the Jenkins user
USER jenkins
