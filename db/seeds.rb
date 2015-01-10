# Заполняем модель Lang
def lang
  # Очищаем таблицу langs
  Lang.destroy_all
  # Заполняем таблицу langs
  Lang.create(title: "C++")
  Lang.create([{title: "Ruby"},{title: "Python"}])
end

lang