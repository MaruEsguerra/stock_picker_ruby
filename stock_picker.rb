def stock_picker(prices)
  min_price = prices[0]
  min_day = 0
  best_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_day = day
    else
      profit = price - min_price
      if profit > best_profit
        best_profit = profit
        best_days = [min_day, day]
      end
    end
  end

  best_days
end

# Test area - uncomment to test!
result = stock_picker([17,3,6,9,15,8,6,1,10])
p result