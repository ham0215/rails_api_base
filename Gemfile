source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails'
gem 'mysql2'
gem 'puma'

gem "lograge"

gem 'seed-fu'

gem 'config'

gem 'sidekiq'

gem 'sendgrid-ruby'

gem 'active_storage_validations'

gem 'graphql'
gem 'graphql-batch'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'faker'
  gem 'simplecov', require: false
  gem 'simplecov-json', require: false

  gem 'bullet'
end

group :development do
  gem 'listen', '~> 3.3'

  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false

  gem 'brakeman'

  gem 'graphiql-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
