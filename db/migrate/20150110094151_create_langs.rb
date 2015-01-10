class CreateLangs < ActiveRecord::Migration
  def change
    create_table :langs do |t|
      t.string    :title
    end
  end
end
