class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :FirstName
      t.string :LastName
      t.date :BirthDate
      t.string :City
      t.string :Country
      t.string :Pincode
      t.integer :ContactNo
      t.string :Email
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
