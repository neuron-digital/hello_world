class SnippetLang < ActiveRecord::Base
  belongs_to :lang
  belongs_to :snippet
end