#!/usr/bin/env bash

apik=""
sudo DD_AGENT_MAJOR_VERSION=7 DD_API_KEY=c6388d77c3752491e04cd12fc680b3f0 bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/datadog-agent/master/cmd/agent/install_script.sh)"
sudo usermod -a -G vagrant dd-agent
sudo datadog-agent status
sudo chmod -R 744 /etc/datadog-agent/
sudo service datadog-agent restart
ddev config set dd_api_key c6388d77c3752491e04cd12fc680b3f0
# /home/vagrant/.pyenv/shims/ddev config set dd_api_key c6388d77c3752491e04cd12fc680b3f0
# sudo chmod 764 /home/vagrant/.local/share/dd-checks-dev/config.toml

