require 'spec_helper'

describe "information_cones/index" do
  before(:each) do
    assign(:information_cones, [
      stub_model(InformationCone,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(InformationCone,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  xit "renders a list of information_cones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
