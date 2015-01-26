class SnippetRubric < ActiveRecord::Base
  belongs_to :rubric, counter_cache: true
  belongs_to :snippet
end