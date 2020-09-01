##git rev-list --format=%B --max-count=1 c396aeee
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is c396aeee; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
