source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'will_paginate', '~> 3.0'
group :assets do
	gem 'therubyracer','~>0.12.1'
  gem 'uglifier','~>2.4.0'
end

group :development, :test do
  gem 'mysql2','~>0.3.11'
end
group :production do
	#for Heroku
  gem 'pg'
  gem 'thin'
end
