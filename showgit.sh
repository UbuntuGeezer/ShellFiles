#git rev-list --format=%B --max-count=1 771fbe0
10
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 771fbe0; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
