#!/bin/bash

# Source shell config first to ensure PATH is set
source ~/.zshrc 2>/dev/null

# Only install if brew command isn't found
if ! command -v brew >/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if [[ $(uname -m) == 'arm64' ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
    source ~/.zshrc
fi

# Install Ruby via Homebrew instead of rbenv
if ! command -v ruby >/dev/null || [ "$(ruby -e 'puts RUBY_VERSION >= "3.0"')" = "false" ]; then
    echo "Installing Ruby via Homebrew..."
    brew install ruby@3.2
    echo 'export PATH="/opt/homebrew/opt/ruby@3.2/bin:$PATH"' >> ~/.zshrc
    source ~/.zshrc
fi

# Check if bundler is installed
if ! command -v bundle >/dev/null; then
    echo "Installing bundler..."
    gem install bundler
fi

# Check if jekyll is installed
if ! command -v jekyll >/dev/null; then
    echo "Installing jekyll..."
    gem install jekyll
fi

# Install dependencies if needed
bundle install

# Start Jekyll server
bundle exec jekyll serve --livereload