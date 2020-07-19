#git rev-list --format=%B --max-count=1 38c4e5e
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 38c4e5e; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
