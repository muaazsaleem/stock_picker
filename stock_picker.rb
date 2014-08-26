#ruby 2.0.0

def stock_picker prices

profit = 0
buy_day = 0
sell_day = 0

prices.each.with_index do |day ,i|

	

	prices[(i+1)..-1].each do | another_day |

		if profit < (another_day - day)
			profit = another_day - day
			buy_day = i
			sell_day = prices.index(another_day)
		end
	end
	
end
[buy_day, sell_day]
end

p stock_picker([17,3,6,9,15,8,6,1,10])