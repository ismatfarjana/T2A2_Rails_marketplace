class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :buyer
      t.integer :seller
      t.boolean :paid
      t.string :amount
      t.string :decimal
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
