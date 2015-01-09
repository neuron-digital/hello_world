# hello_world
Учебный проект - проект на Ruby on Rails посвященный мини-сайту, посвященному различным языкам программирования. В качестве базы данных используется СУБД MySQL.

Для работы с проектом следует выполнить ряд шагов по настройке виртуальной машины под Ubuntu
Установка дополнительных библиотек
<pre>sudo apt-get install libmysqlclient-dev libffi-dev libxslt1-dev libxml2-dev</pre>
Установка MySQL
<pre>sudo apt-get install mysql-server mysql-client</pre>
Создание MySQL-пользователя
<pre>mysql> CREATE USER dev IDENTIFIED BY '321321';
mysql> GRANT ALL ON *.* TO dev;</pre>
Выполнить команду bundle, которая загрузит необходимые для работы проекта гемы (без sudo)
<pre>bundle</pre>

Для запуска консоли, в корне проекта следует выполнить команду
<pre>rails c</pre>
Для запуска сервера, в корне проекта следует выполнить команду
<pre>rails s --binding=192.168.122.2</pre>
После запуска сервера, проект будет доступен по адресу
<pre>http://192.168.122.2:3000</pre>
В качестве IP-адреса следует указывать IP-адрес своей виртуалки.