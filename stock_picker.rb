def stock_picker(array)
  max_profit = 0
  days = []
  array.each_with_index do |day, index|
    return 0 unless day.is_a Number
    array.drop(index).each_with_index do |second_day, second_index|
      profit = second_day - day
      if profit > max_profit
        max_profit = profit
        days = [day, second_day]
      end
    end
  end
  days
end
