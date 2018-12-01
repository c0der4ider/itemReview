class CreateItemsEntities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :items, :entities do |t|
      t.index [:item_id, :entity_id]
    end
  end
end
