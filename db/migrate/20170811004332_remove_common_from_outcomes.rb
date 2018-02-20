class RemoveCommonFromOutcomes < ActiveRecord::Migration[5.0]
  def change
    remove_reference :outcomes, :common, foreign_key: true
  end
end
