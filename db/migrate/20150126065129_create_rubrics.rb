class CreateRubrics < ActiveRecord::Migration
  def change
    create_table :rubrics do |t|
      t.string   :title, null: false
      t.integer  :snippet_rubrics_count, default: 0, null: false
    end

    add_column :langs, :snippet_langs_count, :integer, default: 0, null: false

    create_table :snippet_rubrics do |t|
      t.integer :snippet_id
      t.integer :rubric_id
    end

  end
end
