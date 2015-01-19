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

# Заполняем логотипы языков программирования и пользователей
def images
  User.all.each do |usr|
    usr.build_image(
      upload_file_name: 'usr_logo.jpg',
      upload_file_path: Rails.root.join('public', 'images', 'users')
    )
    usr.save
  end

  langs = {
    'C++' => 'cpp_logo.png',
    'Ruby' => 'ruby_logo.png',
    'Python' => 'python_logo.png',
  }

  langs.each do |lang, logo|
    lng = Lang.where(title: lang).first
    if lng.present?
      lng.build_image(
        upload_file_name: logo,
        upload_file_path: Rails.root.join('public', 'images', 'langs')
      )
      lng.save
    end
  end

end

langs
users
snippets
images