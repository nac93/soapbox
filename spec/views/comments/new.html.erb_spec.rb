require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :content => "MyString",
      :choice_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_content", :name => "comment[content]"
      assert_select "input#comment_choice_id", :name => "comment[choice_id]"
      assert_select "input#comment_user_id", :name => "comment[user_id]"
    end
  end
end
