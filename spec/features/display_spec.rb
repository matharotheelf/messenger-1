message = "Message to test only display first 20 chars"

feature 'User can see message summary' do
  scenario "User only sees message's first 20 chars" do
    visit ('/')
    fill_in 'message', with: message
    click_button 'Submit'
    fill_in 'message', with: 'jack sparrow davey jones orlando bloom pirates'
    click_button 'Submit'
    expect(page).to_not have_content 'ones orlando bloom pirates'
  end
end
