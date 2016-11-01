# README

## .railsrc
- -B #Skip Bundle
- -T #Skip Test-Unit
- -d postgresql #Use postgres
- --skip-turbolinks

## Set up steps
- disable coffee-rails gem
- disable turbolinks gem

- User auth and debugging gems
```
gem 'devise'
gem 'awesome_print'
gem 'better_errors'
gem 'binding_of_caller'
```

- Bootstrap and faker
```
gem 'bootstrap-sass', '~> 3.3.6'
- gem 'faker'
```
```
bundle install
```

- rename to application.scss
- create main.scss with bootstrap imports
