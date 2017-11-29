class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :tag, default: '', null: false
      t.string :tag_friendly, unique: true, null: false

      t.timestamps
    end
  end
end
