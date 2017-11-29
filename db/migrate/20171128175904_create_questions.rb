class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title, default: '', limit: 400, null: false
      t.references :group, unsigned: true, null: false, index: true
      t.references :user, unsigned: true, null: false, index: true
      t.string :user_email, null: false, default: ''
      t.text :question, null: false
      t.integer :viewed, default: 0, unsigned: true, null: false
      t.integer :votes, default: 0, null: false

      t.timestamps
    end
  end
end
