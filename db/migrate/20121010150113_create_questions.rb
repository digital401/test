class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :Question
      t.integer :Question_Type
      t.text :Hint
      t.integer :Hint_Point
      t.text :Answer

      t.timestamps
    end
  end
end
