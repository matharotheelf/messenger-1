feature 'User can delete message' do
  scenario "User can delete message" do
    visit('/')
    fill_in 'message', with: 'Delete Delete Delete Delete'
    click_button 'Submit'
    #fill_in 'message', with: 'I am jack sparrow You are Davey Jones'
    click_link 'Delete Delete Delete'
    click_button 'Delete'
    expect(page).to_not have_content 'Delete Delete Delete'
  end
end
