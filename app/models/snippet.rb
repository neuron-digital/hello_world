class Snippet < ActiveRecord::Base
  belongs_to :user

  has_many :snippet_langs
  has_many :langs, through: :snippet_langs

  has_many :snippet_rubrics
  has_many :rubrics, through: :snippet_rubrics

  enum visibility: [:_public, :_private]

  scope :with_public_access, -> { where visibility: visibilities[:_public] }
  scope :for_main,           -> { with_public_access.order created_at: :desc }
end
