#gh pr create --title "My PR Title" --body "Description of changes"
gh pr create --title "$(git branch --show-current)"
