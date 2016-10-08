class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :sku
      t.string :product_description
      t.references :category
      t.boolean :is_active, default: true
      t.timestamps
    end
  end
end
