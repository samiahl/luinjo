require 'spec_helper'

describe ApplicationController do
  describe "root path" do
    it { should route(:get, "/").to("information_cones#index") }
  end
end
