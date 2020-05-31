require 'faker'
FactoryBot.define do
  factory :customer do |f|
   f.fam_name { Faker::Name.name }
   f.st_name { Faker::Address.street_name }
   f.st_numb { Faker::Address.building_number }
   f.phone { Faker::Number.number(digits: 10) }
   f.email { Faker::Internet.email }


  end
end
