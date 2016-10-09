class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id, default: 0
      t.boolean :is_active, default: true
      t.references :product_type
      t.timestamps
    end
  end
end
