#git rev-list --format=%B --max-count=1 36ae370
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 36ae370; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
