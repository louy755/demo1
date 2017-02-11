class CreateRadiologies < ActiveRecord::Migration[5.0]
  def change
    create_table :radiologies do |t|
      t.text :viewer
      t.text :entry
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
