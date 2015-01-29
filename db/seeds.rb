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

# Заполняем модель Rubric
def rubrics
  # Очищаем таблицу rubrics
  Rubric.destroy_all
  # Заполняем таблицу rubrics
  rubrics = [
    {title: 'C++'},
    {title: 'Git'},
    {title: 'OOP'}
  ]
  Rubric.create(rubrics)
end

# Заполняем модель User
def users
  # Очищаем таблицу users
  User.destroy_all
  # Заполняем таблицу users
  users = (1..100).to_a.map do |user_number|
    {
      first_name: "Иван #{user_number}",
      email:     "test_#{user_number}@example.com",
      last_name: "Коробков #{user_number}",
      password: '321321321'
    }
  end
  User.create(users)
end

# Заполняем модель Snippet
def snippets
  # Очищаем таблицу snippets
  Snippet.destroy_all
  # Заполняем модель snippets
  usr = User.all.to_a
  rbr = Rubric.all
  Lang.all.each do |lng|
    (50..100).to_a.sample.times do |snippet_number|
      lng.snippets.build({
        title: "Cниппет #{snippet_number} по #{lng.title}",
        content: "Cниппет #{snippet_number} по #{lng.title}",
        user: usr.sample,
        rubrics: [rbr.sample, rbr.sample],
        visibility: Snippet.visibilities[snippet_number % 3 == 0 ? :_private : :_public],
        updated_at: Time.now + snippet_number
      })
    end
    lng.save
  end
end

# Заполняем логотипы языков программирования и пользователей
def images
  # Очищаем таблицу snippets
  Image.destroy_all

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
rubrics
users
snippets
images