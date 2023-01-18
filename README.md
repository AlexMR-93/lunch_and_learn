
# Learning Goals
- Expose an API that aggregates data from multiple external APIs
- Expose an API that requires an authentication token
- Expose an API for CRUD functionality
- Determine completion criteria based on the needs of other developers
- Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc).
* Project Document [Click Here](https://backend.turing.edu/module3/projects/lunch_and_learn/')
# Ruby version

Ruby 2.7.4

Rails 5.2.6

### Set Up
- `clone repository`
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}`
- `rails s`

* System dependencies [Find out what gems do here](https://rubygems.org)


```
ruby '2.7.4'

gem 'rails', '~> 5.2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap'
gem 'faraday'
gem 'faker'

group :development, :test do
  gem 'pry'
  gem 'figaro'
  gem 'simplecov'
  gem 'shoulda-matchers'
  gem 'orderly'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'vcr'
  gem 'webmock'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'jsonapi-serializer'
```


# Post Gem installation 
- `Bundle install`
- `Bundle update`

# Reqired API keys 

- Get a free API Key for EDAMAM Recipe [Here](https://developer.edamam.com/edamam-recipe-api)
- Get a free API Key for YouTube at [Here](https://developers.google.com/youtube/v3/getting-started)
- Get a free API Key for Pexels at [Here](https://www.pexels.com/api/)

# Required Endpoints 
Localhost
- `Back End Server: http://localhost:3000`

Get Recipes for a Particular Country
- `GET /api/v1/recipes?country=#{country}`

Get Learning Resources for a Particular Country
- `GET /api/v1/learning_resources?country=#{country}`

User Registration
- `POST /api/v1/users`

Add Favorites
- `POST /api/v1/favorites`

Get a User's Favorites
- `GET /api/v1/favorites?api_key=jgn983hy48thw9begh98h4539h4`

Delete a Favorite From a User
- `DELETE /api/v1/favorites`


