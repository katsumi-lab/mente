class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :room      ,null: false
      t.string :item      ,null: false
      t.text :description
      t.timestamps
    end
  end
end
