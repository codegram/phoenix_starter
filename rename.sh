#!/bin/sh

find . -type f -name '.gitignore' -print0 | xargs -0 sed -i '' -e 's/phoenix_starter/awesome_project/g'
find . -type f -regex '*.\(eex\|ex\|exs\|js\|md\)' -print0 | xargs -0 sed -i '' -e 's/phoenix_starter/awesome_project/g'
find . -type f -regex '*.\(eex\|ex\|exs\|js\|md\)' -print0 | xargs -0 sed -i '' -e 's/PhoenixStarter/AwesomeProject/g'