class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.string :description
      t.string :price
      t.references :category
      t.references :brand
      t.boolean :is_active, default: true
      t.timestamps
    end
  end
end
