# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

pd_type = ProductType.create!(name: 'Home Product')

category = Category.create!(name: 'Inverter',product_type: pd_type)

brand = Brand.create!(name: 'Microtek',category: category)

product = Product.create!(name: 'INVERTER MODEL & CAP 650 VA SHINY',
                          sku: 'INV001',
                          price: 'Rs. 17,000',
                          description: 'Good Quality With Long Life',
                          category: category,
                          brand: brand)


