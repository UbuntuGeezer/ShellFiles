##git rev-list --format=%B --max-count=1 58ee7e6
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 58ee7e6; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
