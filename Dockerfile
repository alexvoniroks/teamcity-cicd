# Extended TeamCity Agent with Node.js
FROM jetbrains/teamcity-agent:2023.11

# Switch to root for installations
USER root

# Install Node.js 20.x
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

# Install additional tools
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Add buildagent user to docker group
RUN usermod -aG docker buildagent

# Verify installations
RUN node --version && npm --version

# Switch back to buildagent user
USER buildagent

# Set working directory
WORKDIR /opt/buildagent
