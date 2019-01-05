feature 'User can see message summary' do
  scenario "User only sees message's first 20 chars" do
    visit ('/')
    fill_in 'message', with: 'jack sparrow davey jones orlando bloom pirates'
    click_button 'Submit'
    expect(page).to_not have_content 'ones orlando bloom pirates'
  end
end

feature 'User can press on button to see full message' do
  scenario "User can press button to open page with full message" do
    visit('/')
    fill_in 'message', with: 'jack sparrow davey 1jones orlando bloom pirates'
    click_button 'Submit'
    #fill_in 'message', with: 'I am jack sparrow You are Davey Jones'
    click_link 'jack sparrow davey 1'
    expect(page).to have_content 'jack sparrow davey 1jones orlando bloom pirates'
  end
end
