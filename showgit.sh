##git rev-list --format=%B --max-count=1 8adc2cc
echo "See commit-list.txt for list of commits..."
read -p "Latest ShellFiles is 8adc2cc; Press <return> to continue>..."
git rev-list --format=%B --max-count=1 $1  # comment
