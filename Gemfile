source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'haml', '~> 4.0', '>= 4.0.7'
gem "haml-rails", "~> 0.9"
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'will_paginate', '~> 3.0', '>= 3.0.7'
gem 'bootstrap-will_paginate', '~> 0.0.10'
gem 'font-awesome-sass'
gem 'bootstrap-social-rails', '~> 4.8'
gem 'local_time', '~> 1.0', '>= 1.0.3'

gem 'rails_layout', '~> 1.0', '>= 1.0.29'

gem 'devise', '~> 3.5', '>= 3.5.2'
gem 'rails_admin', '~> 0.8.1'
gem 'cancancan', '~> 1.13', '>= 1.13.1'

gem 'omniauth-facebook', '~> 3.0'
gem 'omniauth-linkedin', '~> 0.2.0'
gem 'omniauth-google-oauth2', '~> 0.2.10'
gem 'omniauth-vkontakte', '~> 1.3', '>= 1.3.6'
gem 'omniauth-twitter', '~> 1.2', '>= 1.2.1'
gem 'figaro', '~> 1.1', '>= 1.1.1'

gem 'redcarpet', '~> 3.3', '>= 3.3.3'
gem 'rails-bootstrap-markdown'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :test do
  gem 'guard-minitest', '~> 2.3.2' # https://github.com/guard/guard-minitest
  # Colorize minitest output and show failing tests instantly.
  gem 'minitest-colorize', git: 'https://github.com/ysbaddaden/minitest-colorize'
  gem 'terminal-notifier-guard', '~> 1.6.4' # https://github.com/Springest/terminal-notifier-guard
  gem 'terminal-notifier', '~> 1.6.2' # https://github.com/alloy/terminal-notifier
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
end

group :development, :test do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'byebug',      '3.4.0'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem "bullet"
  gem 'rails_best_practices', '~> 1.15', '>= 1.15.7'
end

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'puma'
end