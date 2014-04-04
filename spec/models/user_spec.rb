require 'spec_helper'

describe User do
  it {should have_many(:information_cones).through(:subscriptions)}
  it {should have_many(:subscriptions).dependent(:destroy)}
end
