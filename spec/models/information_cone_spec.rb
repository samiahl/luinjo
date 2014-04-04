require 'spec_helper'

describe InformationCone do
  # Builds a valid non-persisted information_cone for further manipulation in tests
  let(:information_cone) { Fabricate.build(:information_cone) }

  context "is not saved when its" do
    context "title" do
      it "is nil/empty string" do
        # The validator uses blank? to check either nil or a blank string
        information_cone.title = nil
        expect(information_cone.save).to be false
      end

      it "is longer than 32 characters" do
        information_cone.title = Faker::Lorem.characters 33
        expect(information_cone.save).to be false
      end

      it "contains an URL" do
        information_cone.title = Faker::Internet.url
        expect(information_cone.save).to be false
      end

      it "contains an e-mail" do
        information_cone.title = Faker::Internet.email
        expect(information_cone.save).to be false
      end

      it "contains whitespaces" do
        information_cone.title = " " << Faker::Lorem.characters(31)
        expect(information_cone.save).to be false
      end
    end

    context "description" do
      it "is longer than 1000 characters" do
        information_cone.description = Faker::Lorem.characters 1001
        expect(information_cone.save).to be false
      end

      it "contains an URL" do
        information_cone.description = Faker::Internet.url
        expect(information_cone.save).to be false
      end

      it "contains an e-mail" do
        information_cone.description = Faker::Internet.email
        expect(information_cone.save).to be false
      end
    end
  end
end
