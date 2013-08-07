source 'https://rubygems.org'
ruby '2.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'


# Use postgresql as the database for Active Record
gem 'pg'
# gem 'wicked'
gem 'haml'

# gem 'protected_attributes'
# gem 'bcrypt-ruby', '~> 3.0.0'
gem 'jquery-rails'

gem 'devise'
gem 'omniauth-twitter'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-stack_explorer'
  gem 'annotate'
  gem 'quiet_assets'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'faker'
  gem 'factory_girl_rails'

end

group :development do
  gem 'better_errors'
end

group :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'faker'
end

group :production do
  #REQUIRED for Rails 4.0 on Heroku!
  gem 'rails_12factor'
end


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end