class RemoveLevelFromCommon < ActiveRecord::Migration[5.0]
  def change
    remove_column :commons, :level, :integer
  end
end
