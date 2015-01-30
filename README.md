# hello_world
Учебный проект - проект на Ruby on Rails, мини-сайт, посвященный различным языкам программирования. В качестве базы данных используется СУБД MySQL.

## Настройка проекта
Для работы с проектом следует выполнить ряд шагов по настройке виртуальной машины под Ubuntu
Установка дополнительных библиотек
```
sudo apt-get install libmysqlclient-dev libffi-dev libxslt1-dev libxml2-dev
```
Установка MySQL
```
sudo apt-get install mysql-server mysql-client
```
Создание MySQL-пользователя
```
mysql> CREATE USER dev@localhost IDENTIFIED BY '321321';
mysql> GRANT ALL ON *.* TO dev@localhost;
```
Выполнить команду bundle, которая загрузит необходимые для работы проекта гемы (без sudo)
```
bundle
```

## Запуск
Для запуска консоли, в корне проекта следует выполнить команду
```
rails c
```
Для запуска сервера, в корне проекта следует выполнить команду
```
rails s --binding=192.168.122.2
```
После запуска сервера, проект будет доступен по адресу
```
http://192.168.122.2:3000
```
В качестве IP-адреса следует указывать IP-адрес своей виртуалки.

## Занятия

### Занятие 1

* [Алексей Авдеев. Фронтенд. Инструменты](https://www.dropbox.com/s/ojpfx6bfvnixoo8/01%20%D0%98%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B.pptx?dl=0)
* [Артем Нистратов. Обзор Ruby on Rails framework](http://slides.com/go-promo/first#/)
* [Игорь Симдянов. Обзор базы данных MySQL](https://docs.google.com/presentation/d/1TZh08UguMNR-crvMcpTy1CMo4GDkb4YH8GhKKimIGR0/edit?usp=sharinghttps://docs.google.com/presentation/d/1TZh08UguMNR-crvMcpTy1CMo4GDkb4YH8GhKKimIGR0/edit?usp=sharing)

### Занятие 2

* [Игорь Симдянов. Взаимодействие Ruby on Rails с базой данных](https://docs.google.com/presentation/d/1plJYhtkX3eQVWwbEJJ1GEcg8knVzK0eGUUPx24oZhWc/edit?usp=sharing)
* [Артем Нистратов. ActiveRecord часть первая](https://slides.com/go-promo/second)
* [Алексей Авдеев. Фронтенд. HTML5](https://www.dropbox.com/s/m595llw2g86jxyu/02%20%D0%A4%D1%80%D0%BE%D0%BD%D1%82%D0%B5%D0%BD%D0%B4%20HTML5.pptx?dl=0)

### Занятие 3

* [Игорь Симдянов. Типы данных. Кодировки и сопоставления. UTF-8. Время.](https://docs.google.com/presentation/d/1TEeKQHqnHtLD2_n6Vj45wA9c1iKtgVgdWH6qIFF3LjM/edit?usp=sharing)
* [Алексей Авдеев. Фронтенд. Семантика](https://www.dropbox.com/s/cwbkrka68e4k3rj/03%20%D0%A1%D0%B5%D0%BC%D0%B0%D0%BD%D1%82%D0%B8%D0%BA%D0%B0.pptx?dl=0)

### Занятие 4

* [Игорь Симдянов. Запросы SELECT, INSERT, UPDATE, DELETE](https://docs.google.com/presentation/d/1gl6Vrb7pUGzxa6tfxnQDOQY24A2a4ZuF_mSdJfkFaYg/edit?usp=sharing)
* [Алексей Авдеев. Фронтенд. Семантика](https://www.dropbox.com/s/rmtw5juaef40qfx/04%20CSS%2C%20SASS%2C%20HAML.pptx?dl=0)
* [Тестовый макет PSD](https://www.dropbox.com/s/q22g0h0bns4g36m/free_psd.psd?dl=0)

### Занятие 5

* [Игорь Симдянов. Связь таблиц друг с другом](https://docs.google.com/presentation/d/1pOmKSKTmI7TCkV1gtaJ2DE9iiO-P-uu0DuUMhESEI58/edit?usp=sharing)

### Занятие 6

* [Игорь Симдянов. Многотабличные запросы](https://docs.google.com/presentation/d/1YyJM74tGQ_UXJF_73L6CfNVNAaIDwwUMuuEhmZXwH04/edit?usp=sharing)

### Занятие 7

* [Игорь Симдянов. Паттерны и антипаттерны](https://docs.google.com/presentation/d/12dJiIxGAUSPyBG9BAHGBE7zq3GsWRdG6z7Oox-ybBPI/edit?usp=sharing)

## Глоссарий

* [Глоссарий](https://docs.google.com/document/d/1fDWQXeMoPRCXCUxWehRfZs-jAAcKX8HGtuGeN35JqFU)

## Список литературы

### Ruby

* Д. Флэнаган, Ю. Мацумото. Язык программирования Ruby. 2011
* Хэл Фултон. Программирование на языке Ruby. 2013

### Ruby on Rails

* С. Руби, Д. Томас, Д. Хэнссон. Гибкая разработка веб-приложений в среде Rails, 4-е издание
* Obie Fernandez, Kevin Faustino and Vitaly Kushner. The Rails 4 Way

### Front-end

* Марк Бейтс. CoffeeScript. Второе дыхание JavaScript. 2012
* Эдди Османи. Разработка Backbone.js приложений. 2014
* Майкл С. Миковски, Джош К. Пауэлл. Разработка одностраничных веб-приложений, 2014
* Павел Козловский, Питер Бэкон Дарвин. Разработка веб-приложений с использованием AngularJS, 2014

### MySQL

* Джю Грофф, П. Вайнберг. SQL. 3-е издание. 2004
* Максим Кузнецов, Игорь Симдянов. MySQL 5. 2006
* Поль Дюбуа. MySQL. 2007
* Билл Карвин. Программирование баз данных SQL. Типичные ошибки и их устранение. 2011
* Джо Селко. SQL для профессионалов. 2009
* Паскаль Лерми, Стефан Фаро. Рефакторинг SQL-приложений. 2009
* Baron Schwartz, Peter Zaitsev, Vadim Tkachenko, Jeremy D. Zawodny, Arjen Lentz, Derek J. Balling. MySQL. Оптимизация производительности. 2010.
* Чарльз Белл, Мэтс Киндал, Ларс Талманн. Обеспечение высокой доступности систем на основе MySQL. 2011

### Git

* [Scott Chacon, Ben Straub. ProGit](http://git-scm.com/book/ru/)

### Nginx

* Дмитрий Айвалиотис. Администрирование сервера NGINX. 2013