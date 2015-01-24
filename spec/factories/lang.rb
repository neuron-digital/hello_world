FactoryGirl.define do

  factory :lang do

    title                 Faker::Lorem.word
    description           Faker::Lorem.sentence

  end

end