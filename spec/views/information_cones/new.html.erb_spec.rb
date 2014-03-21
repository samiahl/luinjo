require 'spec_helper'

describe "information_cones/new" do
  before(:each) do
    assign(:information_cone, stub_model(InformationCone,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new information_cone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", information_cones_path, "post" do
      assert_select "input#information_cone_title[name=?]", "information_cone[title]"
      assert_select "textarea#information_cone_description[name=?]", "information_cone[description]"
    end
  end
end
