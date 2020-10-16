##git rev-list --format=%B --max-count=1 fe8e638
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is fe8d638; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
