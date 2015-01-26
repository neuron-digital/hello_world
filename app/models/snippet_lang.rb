class SnippetLang < ActiveRecord::Base
  belongs_to :lang, counter_cache: true
  belongs_to :snippet
end