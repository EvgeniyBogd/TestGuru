class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :body
      t.integer :test_id
      t.boolean :correct

      t.timestamps
    end
  end
end