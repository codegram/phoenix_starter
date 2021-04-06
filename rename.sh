#!/bin/sh

find . -type f -name '.gitignore' -exec sed -i 's/phoenix_starter/awesome_project/g' {} \;
find . -type f -regex '.*\.\(eex\|ex\|exs\|leex\|md|json|yml\)' -exec sed -i 's/phoenix_starter/awesome_project/g' {} \;
find . -type f -regex '.*\.\(eex\|ex\|exs\|leex\|md|json|yml\)' -exec sed -i 's/PhoenixStarter/AwesomeProject/g' {} \;
rename  's/phoenix_starter/awesome_project/' **/*