class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :buyer, null: false, foreign_key: { to_table: :users}, index: true
      t.boolean :paid
      t.float :amount
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
