class RenameRoomColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :room, :room_id
  end
end
