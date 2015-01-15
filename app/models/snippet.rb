class Snippet < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :langs, join_table: :snippets_langs
end
