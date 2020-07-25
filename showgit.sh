#git rev-list --format=%B --max-count=1 970da74
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 970da74; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
