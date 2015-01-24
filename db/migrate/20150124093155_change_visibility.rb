class ChangeVisibility < ActiveRecord::Migration
  def change
    change_column \
      :snippets,
      :visibility,
      :integer,
      unsigned: true,
      after: :content
    change_column \
      :snippets,
      :user_id,
      :integer,
      default: 0,
      null: false,
      unsigned: true,
      after: :content
  end
end
