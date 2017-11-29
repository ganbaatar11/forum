class CreateQuestionTags < ActiveRecord::Migration[5.1]
  def change
    create_table :question_tags do |t|
      t.references :question, default: 0, unsigned: true, null: false, index: true
      t.references :tag, default: 0, unsigned: true, null: false, index: true

      t.timestamps
    end
  end
end
