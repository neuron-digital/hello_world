# Заполняем модель Lang
def langs
  # Очищаем таблицу langs
  Lang.destroy_all
  # Заполняем таблицу langs
  langs = [
    {title: 'C++'},
    {title: 'Ruby'},
    {title: 'Python'}
  ]
  Lang.create(langs)
end

# Заполняем модель User
def users
  # Очищаем таблицу users
  User.destroy_all
  # Заполняем таблицу users
  users = [
    {first_name: 'Александр', last_name: 'Коробков', password: '321321'},
    {first_name: 'Евгений', last_name: 'Понаморев', password: '321321'},
    {first_name: 'Юрий', last_name: 'Кораблев', password: '321321'}
  ]
  User.create(users)
end

# Заполняем модель Snippet
def snippets
  usr = User.all
  Lang.all.each do |lng|
    lng.snippets.build({title: "Первый сниппет по #{lng.title}", content: "Первый сниппет по #{lng.title}", user: usr.sample})
    lng.snippets.build({title: "Второй сниппет по #{lng.title}", content: "Второй сниппет по #{lng.title}", user: usr.sample})
    lng.save
  end
end

langs
users
snippets