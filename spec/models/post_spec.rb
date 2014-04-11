require 'spec_helper'

describe Post do
  # Builds a valid non-persisted post for further manipulation in tests
  let(:post) { Fabricate.build(:post) }

  it {should belong_to(:user)}
  it {should belong_to(:information_cone)}

  context "is not saved when its" do
    context "title" do
      it "is nil/empty string" do
        # The validator uses blank? to check either nil or a blank string
        post.title = nil
        expect(post.save).to be false
      end

      it "is longer than 32 characters" do
        post.title = Faker::Lorem.characters 33
        expect(post.save).to be false
      end

      it "contains an URL" do
        post.title = Faker::Internet.url
        expect(post.save).to be false
      end

      it "contains an e-mail" do
        post.title = Faker::Internet.email
        expect(post.save).to be false
      end
    end

    context "description" do
      it "is longer than 1000 characters" do
        post.description = Faker::Lorem.characters 1001
        expect(post.save).to be false
      end

      it "contains an URL" do
        post.description = Faker::Internet.url
        expect(post.save).to be false
      end

      it "contains an e-mail" do
        post.description = Faker::Internet.email
        expect(post.save).to be false
      end
    end

    context "URL" do
      it "is not a valid HTTP scheme URL" do
        post.url = "ftp://" << Faker::Internet.domain_name
        expect(post.save).to be false
      end

      it "is longer than 256 characters" do
        post.url = Faker::Internet.url("example.com", "/#{Faker::Lorem.characters(256)}")
        expect(post.save).to be false
      end
    end

    it "URL and description are both empty" do
      post.url = ""
      post.description = ""
      expect(post.save).to be false
    end

  end
  context "is saved" do
    context "when description is blank" do
      it "but url is not" do
        post.description = ""
        expect(post.save).to be true
      end
    end
    context "when url is blank" do
      it "but description is not" do
        post.url = ""
        expect(post.save).to be true
      end
    end
  end
end
