class RemoveDescriptionFromCommon < ActiveRecord::Migration[5.0]
  def change
    remove_column :commons, :description, :text
  end
end
