mkdir actions-runner && cd actions-runner

curl -o filename.tar.gz -L https://github.com/actions/runner/releases/download/v2.296.0/actions-runner-linux-x64-2.296.0-noexternals.tar.gz

tar xzf ./filename.tar.gz

./config.sh --unattended --url https://github.com/UnoSD/GitHubRunnerImageBuild --name $(hostname) --runnergroup Default --token <GITHUB REPO TOKEN> 

./run.sh
