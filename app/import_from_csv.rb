require 'csv'

class ImportFromCSV
  def import_table(path)
    rows = CSV.read(path, col_sep: ';')

    columns = rows.shift

    rows.map do |row|
      object = {}
      row.each_with_index do |cell, idx|
        column = columns[idx]
        object[column] = cell
      end
      
      create_object_from_csv(object)
    end
  end

  private

  def create_object_from_csv(object)
    MedicalExamination.create(
      patient_name: object['nome paciente']
    )
  end
end
