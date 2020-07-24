#git rev-list --format=%B --max-count=1 3b66e81
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 3b66e81; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
