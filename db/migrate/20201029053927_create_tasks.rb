class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :room
      t.string :item
      t.text :description
      t.timestamps
    end
  end
end
