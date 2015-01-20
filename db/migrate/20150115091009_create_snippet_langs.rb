class CreateSnippetLangs < ActiveRecord::Migration
  def change
    create_table :snippet_langs do |t|
      t.integer :snippet_id, unsigned: true
      t.integer :lang_id, unsigned: true
    end
  end
end
