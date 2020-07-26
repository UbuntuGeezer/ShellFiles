#git rev-list --format=%B --max-count=1 30e3e6c
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 30e3e6c; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
