##git rev-list --format=%B --max-count=1 aa0098b
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is aa0098b; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
