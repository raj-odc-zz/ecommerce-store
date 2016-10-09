ActiveAdmin.register Product do
  permit_params :category_id, :product_name, :sku, :product_description, :is_active, :image
  form do |f|
    f.inputs "Product Details" do
      f.input :product_name
      f.input :sku
      f.input :product_description
      f.fields_for :category do |ff|
        ff.input :id, :label => 'Category', :as => :select, :collection => Category.all.collect {|p| [ p.category_name, p.id ] }, :selected => ( f.object.category ? f.object.category.id : nil), :include_blank => false
      end
      f.input :is_active
      f.actions
    end
  end
  show do
    attributes_table do
      row "Category" do
        "#{product.category.category_name}"
      end
      row :product_name
      row :sku
      row :product_description
      row :image do
        image_tag product.image.url
      end
    end
    active_admin_comments
  end
end
