require 'rails_helper'

describe "show author page", type: :feature do
  it "should show author details" do
    @alan = FactoryBot.create(:author)
    visit author_path(@alan)
    expect(page).to have_text('Alan')
    expect(page).to have_text('Turing')
    expect(page).to have_text('Alan Turing')
    expect(page).to have_text('http://wikipedia.org/Alan_Turing')
  end
end
