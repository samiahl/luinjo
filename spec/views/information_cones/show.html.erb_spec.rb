require 'spec_helper'

describe "information_cones/show" do
  before(:each) do
    @information_cone = assign(:information_cone, stub_model(InformationCone,
      :title => "Title",
      :description => "MyText"
    ))
  end
end
