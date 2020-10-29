class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :floor
      t.string :room
      t.string :item

      t.timestamps
    end
  end
end
