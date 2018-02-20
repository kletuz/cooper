class CreateOutcomes < ActiveRecord::Migration[5.0]
  def change
    create_table :outcomes do |t|
      t.integer :level
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
