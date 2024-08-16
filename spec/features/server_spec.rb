feature "Server" do
  it "visit index" do
    visit '/'
    expect(page).to have_content("Hello, World!!!")
    expect(page).to have_content("Parágrafo da página index")
  end

  it 'saves CSV into database' do
    visit '/test'

    expect(page).to have_content 'Informações sendo salvas...'
    # expect(MedicalExamination.first.name).to eq 'Emilly Batista'
    # expect(MedicalExamination.last.name).to eq 'Juliana dos Reis Filho'
  end
end
