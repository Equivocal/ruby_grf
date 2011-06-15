require 'spec_helper'

describe "addons/edit.html.erb" do
  before(:each) do
    @addon = assign(:addon, stub_model(Addon,
      :name => "MyString",
      :description => "MyText",
      :filename => "MyString",
      :location => "MyString",
      :dls => 1,
      :user_id => 1
    ))
  end

  it "renders the edit addon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => addons_path(@addon), :method => "post" do
      assert_select "input#addon_name", :name => "addon[name]"
      assert_select "textarea#addon_description", :name => "addon[description]"
      assert_select "input#addon_filename", :name => "addon[filename]"
      assert_select "input#addon_location", :name => "addon[location]"
      assert_select "input#addon_dls", :name => "addon[dls]"
      assert_select "input#addon_user_id", :name => "addon[user_id]"
    end
  end
end
