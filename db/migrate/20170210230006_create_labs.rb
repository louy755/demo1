class CreateLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :labs do |t|
      t.text :viewer
      t.string :item
      t.string :value
      t.timestamp :timestamp
      t.text :entry
      t.string :item
      t.string :value
      t.timestamp :timestamp
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
