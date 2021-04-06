#!/bin/bash

cp config/dev.local.exs.example config/dev.local.exs
cp config/test.local.exs.example config/test.local.exs

mix compile
mix setup