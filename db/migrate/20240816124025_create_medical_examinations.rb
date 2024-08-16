class CreateMedicalExaminations < ActiveRecord::Migration[7.2]
  def change
    create_table :medical_examinations do |t|
      t.string :patient_name
      t.string :patient_email
      t.string :patient_cpf
      t.string :patient_birthdate
      t.string :patient_address
      t.string :patient_city
      t.string :patient_state
      t.string :doctor_crm
      t.string :doctor_crm_state
      t.string :doctor_name
      t.string :doctor_email
      t.string :token
      t.string :date
      t.string :type
      t.string :limit_type
      t.string :result

      t.timestamps
    end
  end
end
