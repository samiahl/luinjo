require 'spec_helper'

describe ApplicationController do
  describe "root path" do
    xit { should route(:get, "/").to("information_cones#index") }
  end
end
