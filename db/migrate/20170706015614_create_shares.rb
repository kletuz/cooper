class CreateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :shares do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :common_id

      t.timestamps
    end
  end
end
