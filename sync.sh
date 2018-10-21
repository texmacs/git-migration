#!/bin/bash

cd $HOME/migrateV2/mirror
git svn fetch
git rebase trunk
git push origin master

cd $HOME/migrateV2/devel
git svn fetch
git rebase trunk
git push origin master

cd $HOME/migrateV2/doc
git svn fetch
git rebase trunk
git push origin master

cd $HOME/migrateV2/plugins
git svn fetch
git rebase trunk
git push origin master

cd $HOME/migrateV2/texmacs
git svn fetch
git rebase trunk
git push origin master

cd $HOME/guile
git pull origin master
git push github master

date >> $HOME/migrateV2/logs/sync.log
