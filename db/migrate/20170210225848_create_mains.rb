class CreateMains < ActiveRecord::Migration[5.0]
  def change
    create_table :mains do |t|
      t.text :view
      t.text :text_entry
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
