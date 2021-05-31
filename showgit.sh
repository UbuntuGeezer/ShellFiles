#git rev-list --format=%B --max-count=1 7edd4ef
10
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 7edd4ef. Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
