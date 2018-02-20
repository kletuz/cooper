class CreateCommons < ActiveRecord::Migration[5.0]
  def change
    create_table :commons do |t|
      t.integer :plus
      t.integer :level
      t.string :name
      t.text :description
      t.integer :place_id

      t.timestamps
    end
  end
end
