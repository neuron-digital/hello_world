source 'https://rubygems.org'

gem 'rails', '4.2.0'

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

group :development, :test do
  # Генератор аннотаций для моделей, запускается одноименной командой
  gem 'annotate'
  # Отладчик, позволяющий создавать точки останова и вывода отладочной консоли
  gem 'byebug'
  # Досту к IRB-консоли при возникновении исключений или выводе конструкции <%= console %> в представлении
  gem 'web-console', '~> 2.0'
  # Ускоряет работу приложения (тестов, rake-задача), за счет выполнения его в фоновом режиме (https://github.com/rails/spring)
  gem 'spring'
end