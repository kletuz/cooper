class RemoveOutcomeFromCommons < ActiveRecord::Migration[5.0]
  def change
    remove_reference :commons, :outcome, foreign_key: true
  end
end
