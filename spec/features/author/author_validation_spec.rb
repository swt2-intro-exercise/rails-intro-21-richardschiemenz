require 'rails_helper'

describe "author validation", type: :feature do
  it "should fail validation without last name" do
    @author = Author.new(first_name: 'Alan', homepage:'example.com')
    expect(@author).to_not be_valid
  end
end