require 'rails_helper'

RSpec.describe User, type: :model do
  let(:subject) {
    described_class.new(      
      name: "Joe Fisher",
      email: "fisher@fisher.com",
      password: "testing",
      password_confirmation: "testing",
      expertise: "Go"
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  #only validating non devise fields for now
  it "is not valid without a name" do
    subject.name = nil
    
    expect(subject).to_not be_valid
  end

  it "is not valid without expertise" do
    subject.expertise = nil

    expect(subject).to_not be_valid
  end
end
