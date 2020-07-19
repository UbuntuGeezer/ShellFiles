#git rev-list --format=%B --max-count=1 b45a7d7
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is b45a7d7; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
