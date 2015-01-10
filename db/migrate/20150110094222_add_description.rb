class AddDescription < ActiveRecord::Migration
  def change
    add_column :langs, :description, :string, after: :title
  end
end
