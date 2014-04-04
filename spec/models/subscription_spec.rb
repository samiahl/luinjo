require 'spec_helper'

describe Subscription do
  let(:subscription) {Fabricate(:subscription)}

  it {should belong_to(:user)}
  it {should belong_to(:information_cone)}
  it {should validate_presence_of(:user)}
  it {should validate_presence_of(:information_cone)}
end
