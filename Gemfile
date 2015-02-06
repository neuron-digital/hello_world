source 'https://rubygems.org'

gem 'rails', '4.2.0'

# Постраничная навигация
gem 'will_paginate'

# Интегрирует постраничную навигацию из гема will_paginate и Twitter Bootstrap компонент постраничной навигации
gem 'will_paginate-bootstrap'

# Гем управления регистрацией и аутентификацией пользователей
gem 'devise'
# Аутентификация при помощи аккаунта социальной сети Twitter
gem 'omniauth-twitter'

# Взаимодейтсвие с базой данных MySQL
gem 'mysql2'
# Комментарии к таблицам и столбцам базы данных
gem 'migration_comments', '~> 0.3.2'
# Поддержка беззнаковых типов столбцов базы данных MySQL (UNSIGNED)
gem 'activerecord-mysql-unsigned'

# SCSS для каскадных таблиц стилей
gem 'sass-rails', '~> 5.0'
# Uglifier-минификатор для JavaScript-файлов
gem 'uglifier', '>= 1.3.0'
# Язык CoffeeScript, позволяющий писать JavaScript-файлы в ruby-стиле
gem 'coffee-rails', '~> 4.1.0'
# Поддержка JavaScript на стороне сервера (https://github.com/sstephenson/execjs#readme)
gem 'therubyracer', platforms: :ruby

# Библиотека jQuery
gem 'jquery-rails'
# Turbolinks: заменяет только содержимое body и META-тэг title при переходе по ссылкам (https://github.com/rails/turbolinks)
gem 'turbolinks'
# Конструктор для JSON APIs (https://github.com/rails/jbuilder)
gem 'jbuilder', '~> 2.0'
# Генерирует документацию в doc/api (bundle exec rake doc:rails)
gem 'sdoc', '~> 0.4.0', group: :doc
# Haml-rails provides Haml generators for Rails 4.
gem 'haml-rails'
# bootstrap-sass is a Sass-powered version of Bootstrap, ready to drop right into your Sass powered applications.
gem 'bootstrap-sass', '~> 3.3.3'

group :development, :test do
  # Генератор аннотаций для моделей, запускается одноименной командой
  gem 'annotate'
  # Отладчик, позволяющий создавать точки останова и вывода отладочной консоли
  gem 'byebug'
  # Досту к IRB-консоли при возникновении исключений или выводе конструкции <%= console %> в представлении
  gem 'web-console', '~> 2.0'
  # Ускоряет работу приложения (тестов, rake-задача), за счет выполнения его в фоновом режиме (https://github.com/rails/spring)
  gem 'spring'
  # Создание произвольных текстов (для seeds.rb)
  gem 'faker'
  # Деплой проекта на сервер
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano3-unicorn'
end

group :test do
  # Вместо традиционных тестов, используем rspec
  gem 'rspec'
  gem 'rspec-rails'
  # Определяем покрытие тестов
  gem 'simplecov', require: false, group: :test
  # Вместо фикстур, используем фабричный способ формирования моделей
  gem 'factory_girl_rails'
  # Дополнительные матчеры для тестирования связей моделей 
  gem 'shoulda-matchers'
  # Эмуляция действий пользователей
  gem 'capybara'
  # Ускорение работы тестов
  gem 'spork'
  gem 'guard-spork'
  gem 'guard-rspec'
  # Управление очисткой базы данных
  gem 'database_cleaner'
end

group :production do 
  gem 'unicorn'
end