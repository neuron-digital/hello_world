class AddForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :snippet_langs, :langs
    add_foreign_key :snippet_langs, :snippets
  end
end
