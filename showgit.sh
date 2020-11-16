##git rev-list --format=%B --max-count=1 cb23eb1
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is cb23eb1; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
