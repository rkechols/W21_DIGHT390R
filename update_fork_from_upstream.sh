echo "-----STATUS-----"
git status
echo "----------------"
git fetch upstream
git switch main
git merge upstream/main
echo "-----STATUS-----"
git status
echo "----------------"

