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

* [Артем Нистратов. Обзор Ruby on Rails framework](http://slides.com/go-promo/first#/)

* [Игорь Симдянов. Обзор базы данных MySQL](https://oc.life.ru/public.php?service=files&t=53f4ba748571321621314af5f34cb761)
* [Игорь Симдянов. Обзор базы данных MySQL (pptx-вариант)](https://oc.life.ru/public.php?service=files&t=14f042ff297964277f36b72e6ab185b1)


* [Алексей Авдеев. Фронтенд. Инструменты](https://www.dropbox.com/s/ojpfx6bfvnixoo8/01%20%D0%98%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B.pptx?dl=0)

### Занятие 2

* [Игорь Симдянов. Взаимодействие Ruby on Rails с базой данных](https://oc.life.ru/public.php?service=files&t=517d5eef32fd9e55f1c8c77f59bab003)
* [Игорь Симдянов. Взаимодействие Ruby on Rails с базой данных (pptx-вариант)](https://oc.life.ru/public.php?service=files&t=2f5228be3c6d89d6a0cd165491916341)
* [Артем Нистратов. ActiveRecord часть первая](https://slides.com/go-promo/second)
