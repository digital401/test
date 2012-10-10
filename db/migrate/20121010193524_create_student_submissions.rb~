class CreateStudentSubmissions < ActiveRecord::Migration
  def change
    create_table :student_submissions do |t|
      t.integer :Student_ID
      t.integer :Assignment_ID
      t.integer :Score
      t.datetime :Request_Extension
      t.text :Reason_For_Extension
      t.datetime :Extend_Due_Date
      t.Text :Notes

      t.timestamps
    end
  end
end
