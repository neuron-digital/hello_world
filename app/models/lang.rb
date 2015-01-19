class Lang < ActiveRecord::Base
  has_and_belongs_to_many :snippets, join_table: :snippet_langs
  has_one :image, as: :imageable
end