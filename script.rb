require 'pry-byebug'

def compare(array)
  #  binding.pry
     comparison_array=[]
        comparison_array+=array

    comparison_array.reduce(Hash.new(0)) do |result_hash, element|
        array.shift
        array.each do |next_element|
               if(next_element-element>result_hash[:optimal][0])
                result_hash[:optimal]=[next_element-element,[comparison_array.index(element),comparison_array.index(next_element)]]
                end
            result_hash
        end

        result_hash
    end

end


def stock_picker (stock_prices)
 result = compare(stock_prices)

 p "You should buy on day #{result[:optimal][1][0]} and sell on day #{result[:optimal][1][1]} for a profit maximum of #{result[:optimal][0]} "
end
stock_picker([17,3,6,9,15,8,6,1,10])