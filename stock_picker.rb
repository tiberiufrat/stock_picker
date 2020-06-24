require 'pry'

def stock_picker(array)
  max_profit = 0
  days = []
  array.each_with_index do |day, index|
    return 0 unless day.is_a? Numeric
    array.drop(index).each_with_index do |second_day, second_index|
      profit = second_day - day
      if profit > max_profit
        max_profit = profit
        days = [index, second_index+1]
      end
    end
  end
  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
