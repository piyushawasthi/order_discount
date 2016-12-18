class Order  
	def initialize(flat_discount  = 0)    
		@products = []    
		@flat_discount = flat_discount    
		@total = 0.0  
	end  

	def add_product(product)   
		@products << product   
		@total = (@total + product.total_price)  
	end  

	def payment_total    
		(@total - @flat_discount)  
	end
end