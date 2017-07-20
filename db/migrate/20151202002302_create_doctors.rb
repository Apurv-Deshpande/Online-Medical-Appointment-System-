class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :DoctorName
      t.string :Specialization
      t.string :HospitalName
      t.date :ADate

      t.timestamps null: false
    end
  end
end
