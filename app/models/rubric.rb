class Rubric < ActiveRecord::Base
  has_many :snippet_rubrics
  has_many :snippets, through: :snippet_rubrics
  has_one  :image, as: :imageable
end