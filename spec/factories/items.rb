FactoryBot.define do
  factory :item do
    user
    category
    user_id        { 1 }
    name           { Faker::Name.name }
    description    { Faker::Lorem.sentence }
    brand          { "シャネル" }
    size           { "S" }
    condition      { "状態が良い" }
    price          { Faker::Commerce.price }
    profit         { "1000" }
    category_id    { 1 }
  end
end