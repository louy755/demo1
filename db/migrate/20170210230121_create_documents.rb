class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.text :viewer
      t.text :entry
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
