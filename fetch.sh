#!/usr/bin/env sh

USER="$1"

if [ -z "$USER" ]
then
  echo "No user is supplied"

  return 0
fi

curl -s https://api.github.com/users/$USER/keys | jq ".[] | .key" -r
