class CreateQuestionDetails < ActiveRecord::Migration
  def change
    create_table :question_details do |t|
      t.integer :question_id
      t.string :content

      t.timestamps null: false
    end
  end
end
