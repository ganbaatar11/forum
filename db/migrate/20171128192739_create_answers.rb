class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.references :question, null: false, index: true
      t.references :user, null: false, index: true
      t.string :user_email, null: false, default: ''
      t.text :answer, null: false
      t.column :correct, "ENUM('0', '1') DEFAULT '0'", null: false
      t.integer :votes, default: 0, null: false

      t.timestamps
    end
  end
end
