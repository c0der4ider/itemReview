class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name

      t.timestamps
    end
    add_index :brands, :name
  end
end
