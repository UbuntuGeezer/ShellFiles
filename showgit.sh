##git rev-list --format=%B --max-count=1 09815b8
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 09815b8; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
