#!/bin/bash

cd texmacs
git svn fetch
git rebase trunk
git push origin master
