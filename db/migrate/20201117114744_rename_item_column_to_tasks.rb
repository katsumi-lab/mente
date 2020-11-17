class RenameItemColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :item, :item_id
  end
end
