class RenameNameColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :name,:floor  
  end
end
