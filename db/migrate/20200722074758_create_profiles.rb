class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :abn
      t.text :address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :mobile_number
      t.references :user, null: false, foreign_key: true
    end
  end
end
