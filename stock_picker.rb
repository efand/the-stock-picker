def stock_picker(prices)
  best_buy_day = 0
  best_sell_day = 0
  max_profit = 0

  prices.each_with_index do |buy_price, buy_day|
    (buy_day + 1).upto(prices.length - 1) do |sell_day|
      sell_price = prices[sell_day]
      potential_profit = sell_price - buy_price

      if potential_profit > max_profit
        max_profit = potential_profit
        best_buy_day = buy_day
        best_sell_day = sell_day
      end
    end
  end

  [best_buy_day, best_sell_day]
end

# Test the stock_picker method
prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
best_days = stock_picker(prices)
puts "Best days to buy and sell: #{best_days} for a profit of $#{prices[best_days[1]]} - $#{prices[best_days[0]]} == $#{prices[best_days[1]] - prices[best_days[0]]}"
