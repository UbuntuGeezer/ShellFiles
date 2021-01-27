e#git rev-list --format=%B --max-count=1 0deccb1
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 0deccb1; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
