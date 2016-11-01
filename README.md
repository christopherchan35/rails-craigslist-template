# README

## .railsrc
- -B #Skip Bundle
- -T #Skip Test-Unit
- -d postgresql #Use postgres
- --skip-turbolinks

## Set up steps
- disable coffee-rails gem
- disable turbolinks gem

- add devise gem
```
gem 'devise'
```

- add awesome_print gem
```
gem 'awesome_print'
```

- add better_errors gem
```
gem 'better_errors'
```

- add binding_of_caller gem
```
gem 'binding_of_caller'
```

- add bootstrap-sass gem
```
gem 'bootstrap-sass', '~> 3.3.6'
```

- add faker gem
```
- gem 'faker'
```
```
bundle install
```

- rename to application.scss
- create main.scss with bootstrap imports
