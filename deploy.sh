ssh -o StrictHostKeyChecking=no azureuser@20.55.25.65 <<HTML

    cd /home/azureuser/tutorial-ci-actions

    git pull --rebase origin main

HTML