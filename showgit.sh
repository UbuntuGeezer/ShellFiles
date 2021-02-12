#git rev-list --format=%B --max-count=1 e033051
10
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is e033051; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
