feature Battle do

  scenario "check form names" do
    visit("/")
    fill_in :player_1_name, with: "Luke"
    fill_in :player_2_name, with: "Anish"
    click_button 'Submit'

    # save_and_open_page

    expect(page).to have_content "Luke vs Anish"
  end

  scenario "shows player 2s HP" do
    visit("/")
    fill_in :player_1_name, with: "Luke"
    fill_in :player_2_name, with: "Anish"
    click_button 'Submit'
    expect(page).to have_content "Anish: 60/60 HP"
  end
end