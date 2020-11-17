class RenameFloorColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :floor, :floor_id
  end
end
