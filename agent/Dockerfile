FROM jetbrains/teamcity-agent

USER root
# Install Docker CLI inside agent
RUN apt-get update && apt-get install -y docker.io nodejs npm && rm -rf /var/lib/apt/lists/*
USER buildagent
