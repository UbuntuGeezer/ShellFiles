#git rev-list --format=%B --max-count=1 5fc73ef
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 5fc73ef; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
