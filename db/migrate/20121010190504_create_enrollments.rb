class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :Student_ID
      t.integer :Course_ID

      t.timestamps
    end
  end
end
