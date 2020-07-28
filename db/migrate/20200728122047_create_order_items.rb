class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.references :product, null: false, foreign_key: { to_table: :products}, index: true
      t.references :order, null: false, foreign_key: { to_table: :orders}, index: true

      t.timestamps
    end
  end
end
