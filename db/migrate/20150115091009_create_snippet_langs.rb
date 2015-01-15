class CreateSnippetLangs < ActiveRecord::Migration
  def change
    create_table :snippet_langs do |t|
      t.integer :snippet_id
      t.integer :lang_id
    end
  end
end
