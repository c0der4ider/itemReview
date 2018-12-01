class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :code
      t.references :category, foreign_key: true
      t.references :brand, foreign_key: true
      t.jsonb :notes
      t.jsonb :inner_comments
      t.string :status

      t.timestamps
    end
    add_index :items, :name
    add_index :items, :code
  end
end
