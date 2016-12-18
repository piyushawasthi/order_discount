require './lib/product'
require './lib/order'

# Constant
VAT = 5.5
# input
order1_flat_discount = 10
order2_flat_discount = 0
product1_price = 10
product1_percentage_discount = 1
product2_price = 20
product2_percentage_discount = 2
product3_price = 30
product3_percentage_discount = 3

order1 = Order.new(order1_flat_discount)
order1.add_product(Product.new(product1_price, order1_flat_discount, product1_percentage_discount))
order1.add_product(Product.new(product2_price, order1_flat_discount, product2_percentage_discount))
order1.add_product(Product.new(product3_price, order1_flat_discount, product3_percentage_discount))
order1_total = order1.payment_total.round(2)

order2 = Order.new(order2_flat_discount)
order2.add_product(Product.new(product1_price, order2_flat_discount, product1_percentage_discount))
order2.add_product(Product.new(product2_price, order2_flat_discount, product2_percentage_discount))
order2.add_product(Product.new(product3_price, order2_flat_discount, product3_percentage_discount))
order2_total = order2.payment_total.round(2)


# Output
puts "========================================================================================="
puts "Order 1 with flat discount:"
puts "Order 1 flat discount: #{order1_flat_discount}" 
puts "Product 1 price: #{product1_price} percent discount: #{product1_percentage_discount}"
puts "Product 1 price: #{product2_price} percent discount: #{product2_percentage_discount}"
puts "Product 1 price: #{product3_price} percent discount: #{product3_percentage_discount}"
puts "Order 1 Total: #{order1_total} with VAT: #{VAT}"
puts "========================================================================================="
puts "Order 2 with percentage discount:"
puts "Order 2 flat discount: #{order2_flat_discount}" 
puts "Product 2 price: #{product1_price} percent discount: #{product1_percentage_discount}"
puts "Product 2 price: #{product2_price} percent discount: #{product2_percentage_discount}"
puts "Product 2 price: #{product3_price} percent discount: #{product3_percentage_discount}"
puts "Order 2 Total: #{order2_total} with VAT: #{VAT}"
puts "========================================================================================="
