def vendor(code, price, items)
    items.each do |n|

    	case n
  			when if n[:code] == code && n[:quantity] == 0
    			puts "#{n[:name]}, end"
  			elsif
     			n[:code] == code && n[:price] == price
     			total = n[:quantity]
     			n[:quantity] = total - 1
    			puts n[:name]
  			end

			when if n[:code] == code && n[:price] < price
    			puts "#{n[:name]}, cashback = #{price - n[:price]}"
			end
			when if n[:code] == code && n[:price] > price
    			puts "add more #{price - n[:price]}"
			end

   		end
  	end

  	return items

end



items = [{:name=>"Snickers", :code=>"A01", :quantity=>10, :price=>250},

        {:name=>"Pepsi", :code=>"A02", :quantity=>5, :price=>350},

        {:name=>"Orange Juice", :code=>"A03", :quantity=>10, :price=>400},

        {:name=>"Bon Aqua", :code=>"A04", :quantity=>7, :price=>120}, 

        {:name=>"Bounty", :code=>"A05", :quantity=>10, :price=>270}]



vendor("A01", 376, items)
