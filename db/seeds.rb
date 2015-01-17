# Заполняем модель Lang
def langs
  # Очищаем таблицу langs
  Lang.destroy_all
  # Заполняем таблицу langs
  Lang.create(title: 'C++')
  Lang.create([{title: 'Ruby'},{title: 'Python'}])
end

# Заполняем модель rubrics
def rubrics
  # Очищаем таблицу rubrics
  Rubric.destroy_all
  # Заполняем таблицу rubrics
  rubrics = [
    {title: 'Scrum'},
    {title: 'Git'},
    {title: 'C/C++'}
  ]
  Rubric.create(rubrics)
end

# Заполняем модель Snippet
def snippets
  Lang.all.each do |lng|
    lng.snippets.build({title: "Первый сниппет по #{lng.title}", content: "Первый сниппет по #{lng.title}"})
    lng.snippets.build({title: "Второй сниппет по #{lng.title}", content: "Второй сниппет по #{lng.title}"})
    lng.save
  end
  Rubric.all.each do |rbr|
    rbr.snippets.build({title: "Первый сниппет по #{rbr.title}", content: "Первый сниппет по #{rbr.title}"})
    rbr.snippets.build({title: "Второй сниппет по #{rbr.title}", content: "Второй сниппет по #{rbr.title}"})
    rbr.save
  end
end


langs
rubrics
snippets