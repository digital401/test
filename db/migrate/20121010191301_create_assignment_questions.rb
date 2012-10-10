class CreateAssignmentQuestions < ActiveRecord::Migration
  def change
    create_table :assignment_questions do |t|
      t.integer :Assignment_ID
      t.integer :Question_ID

      t.timestamps
    end
  end
end
