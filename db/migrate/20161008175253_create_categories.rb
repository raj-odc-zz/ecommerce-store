class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :category_name
      t.integer :parent_id
      t.boolean :is_active, default: true
      t.references :product_type
      t.timestamps
    end
  end
end
