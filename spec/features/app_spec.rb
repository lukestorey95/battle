feature Battle do

  scenario "check form names" do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content "Luke vs Anish"
  end

  scenario "shows player 2s HP" do
    sign_in_and_play
    expect(page).to have_content "Anish: 60/60 HP"
  end
end