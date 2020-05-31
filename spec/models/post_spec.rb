require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(title: "Lost Dog", body: "Last seen on friday", customer: FactoryBot.create(:customer))}
 it "is valid with valid attributes" do
   expect(subject).to be_valid
 end

 it "should have a customer" do
     post=Post.new(title: "Lost Dog", body: "Last seen on friday")
     post.save
     expect(Post.count).to eq 0
end
it "should have a customer_id that belongs to an existing customer" do
    post=Post.new(customer_id: 7777)
    post.save
    expect(Post.count).to eq 0
end
it "is not valid without a title" do
  subject.title=nil
  expect(subject).to_not be_valid
end
it "is not valid without a body" do
  subject.body=nil
  expect(subject).to_not be_valid
end




















end
