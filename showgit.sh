#git rev-list --format=%B --max-count=1 f76c922
10
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is f76c922. Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
