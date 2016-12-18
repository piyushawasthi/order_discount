class Product
  def initialize(price, flat_discount, precent_discount = nil)
    @price = price
    @flat_discount = flat_discount
    @precent_discount = precent_discount
  end  

  def price
    if @flat_discount > 0
      @precent_discount.nil? ? @price : (@price - (@precent_discount.to_f/100)*@price.to_f)
    else
      @price
    end  
  end  

  def total_price      
    price + (VAT/100)*@price  
  end
end