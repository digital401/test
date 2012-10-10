class CreateStudentAnswers < ActiveRecord::Migration
  def change
    create_table :student_answers do |t|
      t.integer :Question_ID
      t.text :Student_Answer
      t.integer :Score
      t.integer :Student_ID

      t.timestamps
    end
  end
end
