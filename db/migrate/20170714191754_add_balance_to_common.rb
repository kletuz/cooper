class AddBalanceToCommon < ActiveRecord::Migration[5.0]
  def change
    add_column :commons, :balance, :integer
  end
end
