class CreateTestsAssigns < ActiveRecord::Migration
  def change
    create_table :tests_assigns do |t|
      t.integer :test_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
