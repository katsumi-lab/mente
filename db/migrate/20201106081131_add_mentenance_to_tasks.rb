class AddMentenanceToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :mentenance, :string  ,null: false
  end
end
