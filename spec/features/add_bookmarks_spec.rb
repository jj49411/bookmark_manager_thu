feature 'add bookmarks' do

    scenario 'add a new bookmark' do
      visit '/bookmarks'
      click_on 'Add a bookmark'
      fill_in 'url', with: 'http://www.google.com'
      click_on 'Submit'
      expect(page).to have_content 'http://www.google.com'
    end
end