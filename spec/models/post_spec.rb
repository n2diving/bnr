require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:subject) {
    described_class.new(      
      title: "Test",
      body: "something incredibly insteresting",
      user_id: user.id
    )
  }
  let(:user) { FactoryBot.create(:user) }
  let!(:filtered_post) { 
    subject.save
    subject
  }
  let!(:unfiltered_post) {
    described_class.create(      
      title: "Bad",
      body: "not found",
      user_id: 99
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    
    expect(subject).to_not be_valid
  end

  it "is not valid without a body" do
    subject.body = nil

    expect(subject).to_not be_valid
  end

  it "is not valid without a user_id" do
    subject.user_id = nil
    
    expect(subject).to_not be_valid
  end

  describe Post, ".filtered" do
    it "returns search query by title" do
      result = Post.filtered({ text: "test" })

      expect(result).to eq [filtered_post]
    end

    it "returns search query by body" do
      result = Post.filtered({ text: "something" })
      
      expect(result).to eq [filtered_post]
    end

    it "returns search query by user" do
      name_string = user.name.split(' ').first
      result = Post.filtered({ text: name_string })
      
      expect(result).to eq [filtered_post]
    end
  end
end
