require 'spec_helper'

describe "addons/index.html.erb" do
  before(:each) do
    assign(:addons, [
      stub_model(Addon,
        :name => "Name",
        :description => "MyText",
        :filename => "Filename",
        :location => "Location",
        :dls => 1,
        :user_id => 1
      ),
      stub_model(Addon,
        :name => "Name",
        :description => "MyText",
        :filename => "Filename",
        :location => "Location",
        :dls => 1,
        :user_id => 1
      )
    ])
  end

  it "renders a list of addons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
