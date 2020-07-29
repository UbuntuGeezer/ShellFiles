#git rev-list --format=%B --max-count=1 f6376b1
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is f6376b1; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
