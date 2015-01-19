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
    {name_first: 'Александр', name_second: 'Коробков', password: '321321'},
    {name_first: 'Евгений', name_second: 'Понаморев', password: '321321'},
    {name_first: 'Юрий', name_second: 'Кораблев', password: '321321'}
  ]
  User.create(users)
end

# Заполняем модель Snippet
def snippets
  Lang.all.each do |lng|
    lng.snippets.build({title: "Первый сниппет по #{lng.title}", content: "Первый сниппет по #{lng.title}"})
    lng.snippets.build({title: "Второй сниппет по #{lng.title}", content: "Второй сниппет по #{lng.title}"})
    lng.save
  end
end

langs
users
snippets