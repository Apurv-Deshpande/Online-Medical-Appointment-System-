class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :LoginName
      t.string :DoctorName
      t.date :AvailableDate
      t.time :Timings
      t.references :patient, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
