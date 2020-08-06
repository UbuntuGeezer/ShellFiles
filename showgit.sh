##git rev-list --format=%B --max-count=1 e121966
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is e121966; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
