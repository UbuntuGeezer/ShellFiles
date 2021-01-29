#git rev-list --format=%B --max-count=1 4cba2fa
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 4cba2fa; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
