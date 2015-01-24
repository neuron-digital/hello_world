class Snippet < ActiveRecord::Base
  belongs_to :user
  has_many :snippet_langs
  has_many :langs, through: :snippet_langs

  enum visibility: [:_public, :_private]

  scope :with_public_access, -> { where visibility: visibilities[:_public] }
  scope :for_main,           -> { with_public_access.order created_at: :desc }
end
