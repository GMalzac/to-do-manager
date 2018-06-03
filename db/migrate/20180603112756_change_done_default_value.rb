class ChangeDoneDefaultValue < ActiveRecord::Migration[5.1]
  def up
    change_column :tasks, :done, :boolean, default: false
  end

  def down
    change_column :tasks, :done, :boolean, default: nil
  end
end
