mkdir actions-runner && cd actions-runner

curl -o filename.tar.gz -L https://github.com/actions/runner/releases/download/v2.296.0/actions-runner-linux-x64-2.296.0-noruntime-noexternals.tar.gz

tar xzf ./filename.tar.gz

./config.sh --url https://github.com/UnoSD/GitHubRunnerImageBuild --token <GITHUB REPO TOKEN>

./run.sh
