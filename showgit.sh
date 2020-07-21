#git rev-list --format=%B --max-count=1 e094141
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is e094141; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
