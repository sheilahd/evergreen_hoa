require 'rails_helper'

RSpec.describe Customer, type: :model do
    subject { Customer.new(fam_name: "Fletcher", st_numb: "120", st_name: "London Plain", phone: "1234567890", email:"molher@email.com" )}
   it "is valid with valid attributes" do
     expect(subject).to be_valid
   end
   it "is not valid without a fam_name" do
     subject.fam_name=nil
     expect(subject).to_not be_valid
   end
   it "is not valid without a st_numb" do
     subject.st_numb=nil
     expect(subject).to_not be_valid
   end
   it "is not valid without a st_name" do
     subject.st_name=nil
     expect(subject).to_not be_valid
   end
   it "is not valid without a phone" do
      subject.phone=nil
      expect(subject).to_not be_valid
   end
   it "is not valid if the phone number is not all digits" do
      subject.phone="123456789a"
      expect(subject).to_not be_valid
    end

   it "is not valid if the phone number is not 10 chars" do
      subject.phone="123"
      expect(subject).to_not be_valid
    end

  it "is not valid without an email" do
     subject.email=nil
     expect(subject).to_not be_valid
  end
  it "is not valid if the email address doesn't have a @" do
    subject.email="email.com"
    expect(subject).to_not be_valid
  end
  it "returns the correct full_address" do
     expect(subject.full_address).to eq("120 London Plain ct, Cary, NC, 27513")
  end
end
