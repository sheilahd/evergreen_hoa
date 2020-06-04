require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { Order.new(doc_name: "Parking Permit", doc_count: 1, customer: FactoryBot.create(:customer))}
 it "is valid with valid attributes" do
   expect(subject).to be_valid
 end

 it "should have a customer" do
     order=Order.new(doc_name: "Parking Permit", doc_count: 1)
     order.save
     expect(Order.count).to eq 0
   end

 it "should have a customer_id that belongs to an existing customer" do
     order=Order.new(customer_id: 7777)
     order.save
     expect(Order.count).to eq 0
   end


 it "is not valid without a doc_name" do
   subject.doc_name=nil
   expect(subject).to_not be_valid
 end

 it "is not valid without a doc_count" do
   subject.doc_count=nil
   expect(subject).to_not be_valid
 end

 it "is not valid if the doc_count is not a number" do
   subject.doc_count="c"
   expect(subject).to_not be_valid
end
it "is not valid if the product_count is not positive numbers" do
    subject.doc_count = 0
    expect(subject).to_not be_valid
  end
end
