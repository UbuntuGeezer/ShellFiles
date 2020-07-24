#git rev-list --format=%B --max-count=1 d533fa5
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is d533fa5; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
