class User < ActiveRecord::Base
  has_many :snippets
end
