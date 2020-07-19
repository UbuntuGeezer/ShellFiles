#git rev-list --format=%B --max-count=1 3f784cd
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 3f784cd; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
