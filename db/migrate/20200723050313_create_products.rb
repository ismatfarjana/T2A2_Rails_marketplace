class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.integer :price
      t.text :description
      t.references :seller, null: false, foreign_key: { to_table: :users}, index: true

      t.timestamps
    end
  end
end
