source 'https://rubygems.org'

gem 'rails', "4.2.1"

gem 'omniauth-github'
gem 'figaro'

gem 'bootstrap-sass', '~> 3.3.5'
gem 'sass-rails', '~> 5.0'
gem 'sprockets-rails'

gem 'pg'
gem 'puma'

gem 'rspec-rails'


gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
#gem 'jbuilder', '~> 2.0'
#gem 'sdoc', '~> 0.4.0', group: :doc

# gem 'bcrypt', '~> 3.1.7'
# gem 'unicorn'
# gem 'capistrano-rails', group: :development

gem 'has_friendship', github: 'yhoshino11/has_friendship', branch: 'devel'

gem 'airbrake'

group :development, :test do
  gem 'web-console', '~> 2.0'
  gem 'pry-rails'
  gem 'coveralls', require: false
  gem 'simplecov', :require => false

  gem 'factory_girl_rails'
end

group :test do
  gem 'launchy'
  gem 'capybara'
  gem 'shoulda-matchers'
  gem 'vcr'
  gem 'webmock'
end

group :production do
  gem 'rails_12factor'

end

