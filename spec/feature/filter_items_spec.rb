require 'rails_helper'
let!(:artist) { create :artist, name: "Zulu" }
let(:artist) { create :artist, name: "Alpha" }

feature 'Filtering System', js: true do
  scenario 'Filter by name' do
    visit root_path

    click_link('Name')

    expect( page.find(:css, 'li').first.text ).to eq "Alpha"
  end

  scenario 'Filter by name' do
    visit root_path

    click_link('Date Added')

    expect( page.find(:css, 'li').first.text ).to eq "Zulu"
  end
end
