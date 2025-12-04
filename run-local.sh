#!/bin/bash
# run-local.sh

# 1. Kill existing processes
echo "Killing existing Jekyll processes..."
pkill -f jekyll 2>/dev/null || true

# 2. Setup Environment (using Homebrew Ruby 3.2 to avoid RVM shell errors)
# Check if Homebrew ruby exists, otherwise try system ruby or rvm as backup
if [ -d "/opt/homebrew/opt/ruby@3.2/bin" ]; then
    export PATH="/opt/homebrew/opt/ruby@3.2/bin:/opt/homebrew/bin:$PATH"
elif [ -d "/usr/local/opt/ruby@3.2/bin" ]; then
    export PATH="/usr/local/opt/ruby@3.2/bin:/usr/local/bin:$PATH"
fi

echo "Using Ruby: $(ruby -v)"

# 3. Fix Bundler if needed (ensure version matches lockfile if possible, or just install latest)
# We install 2.2.3 specifically because the lockfile asks for it
if ! gem list -i bundler -v 2.2.3 > /dev/null; then
    echo "Installing Bundler 2.2.3..."
    gem install bundler -v 2.2.3
fi

# 4. Install Gems
echo "Installing/updating gems..."
bundle install

# 5. Start Server
echo "Starting Jekyll server on http://localhost:4000"
echo "Press Ctrl+C to stop the server"
echo "----------------------------------------"
bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload
