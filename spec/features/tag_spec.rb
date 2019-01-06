feature "Can input tag and look all messages saved under tag" do
  scenario "Can input tag and look all messages saved under tag" do
    visit('/')
    fill_in 'message', with: "one"
    fill_in 'tag', with: "number"
    click_button 'Submit'
    fill_in 'message', with: "two"
    fill_in 'tag', with: "number"
    click_button 'Submit'
    fill_in 'message', with: "three"
    fill_in 'tag', with: "number"
    click_button 'Submit'
    click_link("number", :match => :first)
    expect(page).to have_content("one")
    expect(page).to have_content("two")
    expect(page).to have_content("three")
  end
end
