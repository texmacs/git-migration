# Git Migration of TeXmacs

**NOTE**: The `users.txt` is intentionally kept secret for privacy.

## Step By Step
``` bash
./clone.sh sadhen users.txt
cd texmacs
for t in $(git for-each-ref --format='%(refname:short)' refs/remotes/tags); do git tag ${t/tags\//} $t && git branch -D -r $t; done
for b in $(git for-each-ref --format='%(refname:short)' refs/remotes); do git branch $b refs/remotes/$b && git branch -D -r $b; done
git branch -d trunk
git remote set-url origin  git@github.com:texmacs/texmacs.git
git push --all
git push --tags
```

## Scripts
| file | usage | description |
|------|------|--------------|
| clone.sh | clone.sh `<username>` `<path_to_users.txt>` | clone from svn and set up the git project |
