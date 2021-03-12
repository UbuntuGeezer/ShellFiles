#git rev-list --format=%B --max-count=1 ca54b20
10
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is ca54b20. Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
