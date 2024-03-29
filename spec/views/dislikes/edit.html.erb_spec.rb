require 'spec_helper'

describe "dislikes/edit" do
  before(:each) do
    @dislike = assign(:dislike, stub_model(Dislike,
      :comment_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit dislike form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dislikes_path(@dislike), :method => "post" do
      assert_select "input#dislike_comment_id", :name => "dislike[comment_id]"
      assert_select "input#dislike_user_id", :name => "dislike[user_id]"
    end
  end
end
