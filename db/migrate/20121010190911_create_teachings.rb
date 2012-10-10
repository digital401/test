class CreateTeachings < ActiveRecord::Migration
  def change
    create_table :teachings do |t|
      t.integer :Instructor_ID
      t.integer :Course_ID

      t.timestamps
    end
  end
end
