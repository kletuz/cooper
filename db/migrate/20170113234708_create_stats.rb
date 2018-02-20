class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|

      t.integer :gender
      t.integer :b_year
      t.integer :c_status
      t.string :email
      t.integer :cfc_1
      t.integer :cfc_2
      t.integer :cfc_3
      t.integer :cfc_4
      t.integer :cfc_5
      t.integer :cfc_6
      t.integer :cfc_7
      t.integer :cfc_8
      t.integer :cfc_9
      t.integer :cfc_10
      t.integer :cfc_11
      t.integer :cfc_12
      t.integer :cfc_13
      t.integer :cfc_14
      t.integer :svo_1
      t.integer :svo_2
      t.integer :svo_3
      t.integer :svo_4
      t.integer :svo_5
      t.integer :svo_6

      t.timestamps
    end
  end
end
