require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :title => "MyString",
      :description => "MyText",
      :url => "MyString"
    ).as_new_record)
  end

  xit "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "textarea#post_description[name=?]", "post[description]"
      assert_select "input#post_url[name=?]", "post[url]"
    end
  end
end
