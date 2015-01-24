FactoryGirl.define do

  factory :snippet_lang do

    lang                 { FactoryGirl.create(:lang) }
    snippet              { FactoryGirl.create(:snippet) }

  end

end