#git rev-list --format=%B --max-count=1 f640edd
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is f640edd; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
