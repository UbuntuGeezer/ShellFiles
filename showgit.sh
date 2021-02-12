#git rev-list --format=%B --max-count=1 79e8ac2
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 79e8ac2; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
