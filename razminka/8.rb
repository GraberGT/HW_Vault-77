price = 100
discount = 10

def discount_price(price, discount)
	p price - ((price / 100) * discount)
end

discount_price(price, discount)