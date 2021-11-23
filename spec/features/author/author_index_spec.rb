require 'rails_helper'

describe "index author page", type: :feature do
  it "should show all authors details" do
    @alan = FactoryBot.create(:author)
    visit authors_path
    expect(page).to have_text('Alan Turing')
    expect(page).to have_text('http://wikipedia.org/Alan_Turing')
    expect(page).to have_link('New', href: new_author_path)
  end
end