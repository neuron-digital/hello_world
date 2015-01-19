class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

      t.integer  :imageable_id, unsigned: true, null: false
      t.string   :imageable_type, null: false
      t.string   :upload_file_name, null: false
      t.string   :upload_file_path, null: false
      t.string   :upload_content_type
      t.integer  :upload_file_size, unsigned: true

      t.timestamps

    end
  end
end