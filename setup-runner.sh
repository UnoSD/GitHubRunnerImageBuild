#!/bin/bash

mkdir actions-runner && cd actions-runner

curl -o filename.tar.gz -L https://github.com/actions/runner/releases/download/v2.296.0/actions-runner-linux-x64-2.296.0-noexternals.tar.gz

tar xzf ./filename.tar.gz

./config.sh --unattended --url https://github.com/UnoSD/GitHubRunnerImageBuild --name $(hostname) --runnergroup Default --token <GITHUB REPO TOKEN> 

./run.sh

# Set up Azure DevOps agent

cd ~

mkdir myagent && cd myagent

wget https://vstsagentpackage.azureedge.net/agent/2.206.1/vsts-agent-linux-x64-2.206.1.tar.gz

tar zxf vsts-agent-linux-x64-2.206.1.tar.gz

./config.sh --unattended --url <URL> --projectName <PROJECT> --acceptTeeEula --auth pat --token <DEVOPS PAT TOKEN> #--runAsService

./run.sh
