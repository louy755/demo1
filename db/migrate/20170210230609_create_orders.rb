class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.text :viewer
      t.string :item
      t.string :value
      t.timestamp :timestamp
      t.text :entery
      t.string :order
      t.string :status
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
