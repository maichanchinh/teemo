class CreateTestTags < ActiveRecord::Migration
  def change
    create_table :test_tags do |t|
      t.integer :test_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
