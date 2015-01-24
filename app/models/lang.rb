class Lang < ActiveRecord::Base
  has_many :snippet_langs
  has_many :snippets, through: :snippet_langs
  has_one :image, as: :imageable
end