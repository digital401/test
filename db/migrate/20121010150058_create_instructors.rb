class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :First_Name
      t.string :Middle_Name
      t.string :Last_Name
      t.string :Email
      t.string :Phone
      t.string :Address
      t.string :Password

      t.timestamps
    end
  end
end
