require 'spec_helper'

describe "newsposts/index.html.erb" do
  before(:each) do
    assign(:newsposts, [
      stub_model(Newspost,
        :title => "Title",
        :author => 1,
        :content => "MyText"
      ),
      stub_model(Newspost,
        :title => "Title",
        :author => 1,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of newsposts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
