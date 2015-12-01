class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.string :value
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
