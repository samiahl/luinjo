require 'spec_helper'

describe User do
  it {should have_many(:information_cones).through(:subscriptions)}
  it {should have_many(:subscriptions).dependent(:destroy)}
  it {should validate_presence_of(:username)}
  it {should ensure_length_of(:username).is_at_most(16)}
  it {should validate_uniqueness_of(:username).case_insensitive}
  it {should validate_acceptance_of(:terms_of_service)}
end
