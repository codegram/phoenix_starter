#!/bin/bash

cp config/dev.exs.example config/dev.exs 
cp config/test.exs.example config/test.exs
mix setup
mix compile
