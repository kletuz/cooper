class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.integer :age
      t.integer :population

      t.timestamps
    end
  end
end
