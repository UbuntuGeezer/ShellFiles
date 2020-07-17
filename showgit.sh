#git rev-list --format=%B --max-count=1 64d4f20
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 64d4f20; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
