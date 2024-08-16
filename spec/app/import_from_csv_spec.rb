RSpec.describe ImportFromCSV do
  describe "#import_table" do
    it 'import CSV' do
      ImportFromCSV.new.import_table('./spec/suport/data_test.csv')

      expect(MedicalExamination.first.patient_name).to eq 'Emilly Batista Neto'
      expect(MedicalExamination.last.patient_name).to eq 'Juliana dos Reis Filho'
      expect(MedicalExamination.count).to eq 4
    end
  end
end
