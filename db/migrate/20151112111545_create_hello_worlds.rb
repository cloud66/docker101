class CreateHelloWorlds < ActiveRecord::Migration
  def change
    create_table :hello_worlds do |t|
      t.string :text
      t.integer :y_top
      t.integer :x_left
      t.integer :size
      t.string :color
      t.float :rotation

      t.timestamps null: false
    end
  end
end
