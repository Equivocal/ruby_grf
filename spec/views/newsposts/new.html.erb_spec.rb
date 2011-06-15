require 'spec_helper'

describe "newsposts/new.html.erb" do
  before(:each) do
    assign(:newspost, stub_model(Newspost,
      :title => "MyString",
      :author => 1,
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new newspost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => newsposts_path, :method => "post" do
      assert_select "input#newspost_title", :name => "newspost[title]"
      assert_select "input#newspost_author", :name => "newspost[author]"
      assert_select "textarea#newspost_content", :name => "newspost[content]"
    end
  end
end
