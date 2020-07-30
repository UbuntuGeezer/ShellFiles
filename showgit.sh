#git rev-list --format=%B --max-count=1 567fd30
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 567fd30; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
