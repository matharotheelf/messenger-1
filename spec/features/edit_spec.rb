feature 'User can edit message' do
  scenario "User can edit message" do
    visit('/')
    fill_in 'message', with: '1 2 3 lift off to space'
    click_button 'Submit'
    #fill_in 'message', with: 'I am jack sparrow You are Davey Jones'
    click_link '1 2 3 lift off to sp'
    click_button 'Edit'
    fill_in 'text', with: '1 2 3 lift off to space1'
    click_button 'Submit'
    click_link '1 2 3 lift off to sp'
    expect(page).to have_content '1 2 3 lift off to space1'
  end
end
