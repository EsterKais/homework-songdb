require 'rails_helper'
require 'capybara'

feature 'Manage songs', js: true do
  scenario 'add a new song' do
    # Create an artist
    Capybara.current_driver = Capybara.javascript_driver
      artist = Artist.new(name: "Bla")
      artist.save

    # Point your browser towards the artist show page
    visit "/artists/#{artist.id}"

    # Enter description in the text field
    fill_in 'Name', with: 'Best Song Ever'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")
      sleep(2)

    # Expect the new song to be displayed in the list of songs
    expect(page).to have_content('Best Song Ever')
  end
end
