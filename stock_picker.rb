#ruby 2.0.0

def stock_picker prices

buy_day = 0
actual_sellday = 0
actual_sum = 0

	prices.each.with_index do |buy_day_iterator, i|

		sell_day = 0
		sum = 0
		prices[(i+1)..-1].each.with_index do |val, j|
			if sum < ( val - buy_day_iterator)
				sell_day = j
				sum = val - buy_day_iterator
			end
		end

		unless actual_sum > sum
			buy_day = i
			actual_sellday = sell_day
			actual_sum = prices[sell_day] - prices[i]
		end
	end
[buy_day,actual_sellday]
end

p stock_picker([17,3,6,9,15,8,6,1,10])