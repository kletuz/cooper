class RemoveNameFromCommon < ActiveRecord::Migration[5.0]
  def change
    remove_column :commons, :name, :string
  end
end
