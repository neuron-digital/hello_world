class AddUserIdToSnippet < ActiveRecord::Migration
  def change
    add_column :snippets, :user_id, :integer, unsigned: true
  end
end
