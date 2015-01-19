class User < ActiveRecord::Base
  has_many :snippets
  has_one :image, as: :imageable
end
