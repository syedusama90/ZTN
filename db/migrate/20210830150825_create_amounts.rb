class CreateAmounts < ActiveRecord::Migration[6.1]
  def change
    create_table :amounts do |t|
      t.string :description
      t.string :price
      t.string :PRA
      t.string :AIT
      t.string :totalprice

      t.timestamps
    end
  end
end
