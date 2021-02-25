#git rev-list --format=%B --max-count=1 f424205
10
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is f424205; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
