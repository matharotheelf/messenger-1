message = "Message to test only display first 20 chars"

feature 'User can see message summary' do 
  scenario "User only sees message's first 20 chars" do
    visit ('/')
    fill_in 'message', with: message
    click_button 'Submit'
    expect(page).to have_no_content "display first 20 chars"
  end 
end 
