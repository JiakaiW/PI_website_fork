#!/bin/bash

# Kill any existing Jekyll processes
pkill -f jekyll
sleep 1

# Generate research directions data
ruby scripts/generate_research_data.rb

# Generate members data
ruby scripts/generate_members_data.rb

# Start Jekyll server with live reload on port 4002
cd "$(dirname "$0")" # Ensure we're in the script's directory
bundle exec jekyll serve --port 4002 --livereload 