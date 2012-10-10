class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :Course_Year
      t.string :Semester
      t.string :Course_Name
      t.string :Section
      t.string :Course_Time
      t.string :Class_Room
      t.integer :Credit
      t.text :Course_Description

      t.timestamps
    end
  end
end
