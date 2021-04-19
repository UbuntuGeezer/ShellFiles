#git rev-list --format=%B --max-count=1 a3f2ec9
10
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is a3f2ec9. Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
