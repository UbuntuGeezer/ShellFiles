#git rev-list --format=%B --max-count=1 cd366a1
10
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is cd366a1. Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
