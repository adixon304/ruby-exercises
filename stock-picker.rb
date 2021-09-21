#Stock Picker Exercise -
#Implement a method #stock_picker that takes in an array of stock prices, 
#one for each hypothetical day. It should return a pair of days representing 
#the best day to buy and the best day to sell. Days start at 0.

def stock_picker(stock_array)

    day_hash = Hash.new(0)
    day_index = 0
    stock_array.each { |day_number|
        day_hash[day_index] = day_number
        day_index += 1
    }

    day_hash_sell = day_hash.clone
    profit_best = Hash.new(0)
    profit_best_counter = nil
    day_hash.each do |key, value|

        buy = -value   
        day_hash_sell.each do |key_sell, value_sell|

            #ensure day is only in futue
            if key_sell <= key then 
                next
            end

            profit = buy + value_sell 
            if profit_best_counter == nil || profit > profit_best_counter then             
                #reset hash to ensure only 1 answer given
                profit_best = Hash.new(0)

                #track best days to buy/sell in array
                profit_best[key] = key_sell

                #keep track of best profit so far
                profit_best_counter = profit
            end                   
        end 
    end
    puts profit_best
end
stock_picker([17,3,6,9,15,8,6,1,10])