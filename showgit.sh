#git rev-list --format=%B --max-count=1 fb3737b
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is fb3737b; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
