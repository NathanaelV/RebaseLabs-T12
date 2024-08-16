feature "Server" do
  scenario "Greets you" do
    visit '/'
    expect(page).to have_content("Hello, World!!!")
    expect(page).to have_content("Parágrafo da página index")
  end
end
