ActiveAdmin.register Product do
  permit_params :category_id,:price, :name, :sku, :description, :is_active, :image
  form do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :sku
      f.input :price
      f.input :description
      f.fields_for :category do |ff|
        ff.input :id, :label => 'Category', :as => :select, :collection => Category.all.collect {|p| [ p.name, p.id ] }, :selected => ( f.object.category ? f.object.category.id : nil), :include_blank => false
      end
      f.fields_for :brand do |ff|
        ff.input :id, :label => 'Brand', :as => :select, :collection => Brand.all.collect {|p| [ p.name, p.id ] }, :selected => ( f.object.brand ? f.object.brand.id : nil), :include_blank => false
      end
      f.input :is_active
      f.input :image
      f.actions
    end
  end
  show do
    attributes_table do
      row :name
      row :sku
      row :price
      row :description
      row "Category" do
        "#{product.category.name}"
      end
      row "Brand" do
        "#{product.brand.name}"
      end
      row :image do
        image_tag product.image.url
      end
    end
    active_admin_comments
  end
end
