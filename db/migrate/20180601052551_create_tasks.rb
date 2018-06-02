class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :category
      t.integer :priority
      t.string :comments
      t.date :deadline

      t.timestamps
    end
  end
end
