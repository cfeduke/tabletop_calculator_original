source 'http://rubygems.org'

gem 'rails', '3.0.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3-ruby', :require => 'sqlite3'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

gem 'haml'
#gem 'compass', '>= 0.10.5'
gem 'devise', '>= 1.1.0'
gem 'jquery-rails'

# nokogiri is a bitch to install on OS X Snow Leopard
# install MacPorts from source
# sudo port install libxml2 libxslt
# gem install nokogiri

group :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_girl'
  gem 'webrat', :git => 'https://github.com/kalv/webrat.git'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'cucumber'
  gem 'spork'
  gem 'launchy'
  gem 'pickle'
  #ruby script/rails generate cucumber:install --rspec --capybara
  #rake db:test:load
  #rake db:migrate
  #rake environment RAILS_ENV=test db:migrate
end