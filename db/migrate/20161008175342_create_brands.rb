class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.references :category
      t.boolean :is_active, default: true
      t.timestamps
    end
  end
end
