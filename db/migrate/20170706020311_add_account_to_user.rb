class AddAccountToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :account, :integer
  end
end
