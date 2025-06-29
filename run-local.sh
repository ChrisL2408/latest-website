#!/bin/bash

# Stop any existing Jekyll processes
echo "Stopping any existing Jekyll processes..."
pkill -f jekyll 2>/dev/null || true

# Wait a moment for processes to stop
sleep 2

# Check if Ruby is available
if ! command -v ruby &> /dev/null; then
    echo "Ruby not found. Please install Ruby first."
    exit 1
fi

# Check if bundle is available
if ! command -v bundle &> /dev/null; then
    echo "Bundler not found. Installing gems..."
    gem install bundler
fi

# Install gems if needed
echo "Installing/updating gems..."
bundle install

# Start Jekyll server
echo "Starting Jekyll server on http://localhost:4000"
echo "Press Ctrl+C to stop the server"
echo "----------------------------------------"
bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload 