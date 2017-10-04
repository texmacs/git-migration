#!/bin/bash

if [ -z $2 ];then
  echo "Usage: ./clone.sh <username> path_to_users.txt"
else
  cmd="git svn clone svn+ssh://$1@svn.savannah.gnu.org/texmacs --authors-file=$2 --no-metadata --prefix \"\" -s texmacs"
  echo $cmd
  git svn clone svn+ssh://$1@svn.savannah.gnu.org/texmacs --authors-file=$2 --no-metadata --prefix "" -s texmacs
fi
