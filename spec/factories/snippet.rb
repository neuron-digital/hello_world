FactoryGirl.define do

  factory :snippet do

    title                 Faker::Lorem.word
    content               Faker::Lorem.sentence
    user                  { FactoryGirl.create(:user) }
    visibility            0

  end

end