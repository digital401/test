class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :Assignment_Name
      t.datetime :Start_Date
      t.datetime :Due_Date
      t.integer :Point
      t.text :Description

      t.timestamps
    end
  end
end
