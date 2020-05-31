FactoryBot.define do
  factory :post do
  title { "MyString" }
  body {"text"}
  customer_id {FactoryBot.create(:customer).id}
  end
end
