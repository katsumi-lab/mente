class RenameNameColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :name,:floor  ,null: false
  end
end
