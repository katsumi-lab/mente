class RenameMentenanceColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :mentenance, :mentenance_id
  end
end
