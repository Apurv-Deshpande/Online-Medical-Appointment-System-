class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :Name
      t.integer :Age
      t.string :Height
      t.string :Weight
      t.string :BloodGroup
      t.string :Sugar
      t.string :BloodPressure
      t.date :RegDate

      t.timestamps null: false
    end
  end
end
