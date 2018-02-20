class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :depto
      t.string :condo
      t.integer :account  #por alguna razón nooo habia columns
      t.integer :place_id
      t.string  :password_digest
      t.boolean :admin,           default: false


      t.timestamps
    end
# #esto es una agregación que se realiza por que
# es lo que se recomienda en la documentación d
# las asociaciones

    create_table :stats do |t|

      t.references :user

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

    add_index :stats, :user_id
  end
end
