# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_08_16_124025) do
  create_table "medical_examinations", force: :cascade do |t|
    t.string "patient_name"
    t.string "patient_email"
    t.string "patient_cpf"
    t.string "patient_birthdate"
    t.string "patient_address"
    t.string "patient_city"
    t.string "patient_state"
    t.string "doctor_crm"
    t.string "doctor_crm_state"
    t.string "doctor_name"
    t.string "doctor_email"
    t.string "token"
    t.string "date"
    t.string "type"
    t.string "limit_type"
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
