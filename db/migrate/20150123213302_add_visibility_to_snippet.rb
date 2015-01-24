class AddVisibilityToSnippet < ActiveRecord::Migration
  def change
    add_column :snippets, :visibility, :integer
  end
end
