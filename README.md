# Git Migration of TeXmacs

**NOTE**: The `users.txt` is intentionally kept secret for privacy.

## Import from SVN
``` bash
./clone.sh sadhen trunk/src/TeXmacs/doc texmacs.authors doc
cd doc
for t in $(git for-each-ref --format='%(refname:short)' refs/remotes/tags); do git tag ${t/tags\//} $t && git branch -D -r $t; done
for b in $(git for-each-ref --format='%(refname:short)' refs/remotes); do git branch $b refs/remotes/$b && git branch -D -r $b; done
git branch -d trunk
git remote add origin git@github.com:texmacs/doc.git
git push --all
git push --tags
```

## Sync from SVN
```
git svn fetch
git rebase trunk
git push origin master
```

## How to apply a patch from github PR
```
cd the-texmacs-svn-dir
wget https://github.com/texmacs/texmacs/pull/1.patch -O /tmp/1.patch
git apply /tmp/1.patch
```

## Scripts
| file | usage | description |
|------|------|--------------|
| clone.sh | clone.sh `<username>` `<path_to_users.txt>` | clone from svn and set up the git project |
| sync.sh  | sync.sh  | sync from svn to git                                                         |

## Another way to prepare a plugin repo
Hint:
```
git filter-branch --subdirectory-filter plugins/matlab
```
