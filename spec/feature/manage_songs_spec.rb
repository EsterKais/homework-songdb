require 'rails_helper'

feature 'Manage songs', js: true do
  scenario 'add a new song' do
    # Point your browser towards the home page
    visit root_path

    # Enter description in the text field
    fill_in 'Enter a song..', with: 'Be Chill'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new song to be displayed in the list of songs
    expect(page).to have_content('Be Chill')
  end
end
