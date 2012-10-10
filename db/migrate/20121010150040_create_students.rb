class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :First_Name
      t.string :Middle_Name
      t.string :Last_Name
      t.string :Gender
      t.string :Email
      t.integer :Admission_Year
      t.text :password

      t.timestamps
    end
  end
end
