#!/bin/bash

#!/bin/bash

if [ -z $2 ];then
  echo "Usage: ./clone.sh <username> <trunk> <path_to_users.txt> <dir>"
else
  git svn clone svn+ssh://$1@svn.savannah.gnu.org/texmacs --trunk=$2 --authors-file=$3 --no-metadata --prefix "" -s $4
fi
