FactoryBot.define do
  factory :order do
    doc_name { "MyString" }
    doc_count { 1 }
    customer_id {FactoryBot.create(:customer).id}
  end
end
