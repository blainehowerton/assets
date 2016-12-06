class AddAmountToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment, :amount, :decimal, precision: 5, scale: 2
  end
end
