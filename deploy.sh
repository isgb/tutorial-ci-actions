BRANCH=$1

if[ "$BRANCH" == "main" ]; then
   DEPLOY_PATH="/home/azureuser/tutorial-ci-actions"
else
   DEPLOY_PATH="/home/azureuser/stage"
fi

ssh -o StrictHostKeyChecking=no azureuser@20.55.25.65 <<HTML

    cd /home/azureuser/tutorial-ci-actions

    git pull --rebase origin $BRANCH

HTML