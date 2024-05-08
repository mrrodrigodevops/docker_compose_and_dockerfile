# Use the official Jenkins base image with JDK 17
FROM jenkins/ssh-agent:jdk17

# Switch to root user for installation
USER root

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3-venv

#COPY --chown=jenkins:jenkins ./plugins.txt /usr/share/jenkins/plugins.txt
#RUN jenkins-plugin-cli --plugin-file=/usr/share/jenkins/plugins.txt

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
