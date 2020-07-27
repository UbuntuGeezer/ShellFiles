#git rev-list --format=%B --max-count=1 93c6e4f
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 93c634f; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
