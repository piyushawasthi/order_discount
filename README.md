Steps :

* Ruby version
    
    ruby-2.1.5

* Clone or Unzip
    
    Unzip order_discount

    cd order_discount/
    
* Run Application
    
    ruby application.rb
    
Test input:

    VAT = 5.5
    order1_flat_discount = 10
    order2_flat_discount = 0
    product1_price = 10
    product1_percentage_discount = 1
    product2_price = 20
    product2_percentage_discount = 2
    product3_price = 30
    product3_percentage_discount = 3

Test output: 

    =========================================================================================
    Order 1 with flat discount:
    Order 1 flat discount: 10
    Product 1 price: 10 percent discount: 1
    Product 1 price: 20 percent discount: 2
    Product 1 price: 30 percent discount: 3
    Order 1 Total: 51.9 with VAT: 5.5
    =========================================================================================
    Order 2 with percentage discount:
    Order 2 flat discount: 0
    Product 2 price: 10 percent discount: 1
    Product 2 price: 20 percent discount: 2
    Product 2 price: 30 percent discount: 3
    Order 2 Total: 63.3 with VAT: 5.5
    =========================================================================================


Thanks
