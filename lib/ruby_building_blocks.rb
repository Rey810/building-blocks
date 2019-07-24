# # Ruby Problems
# # 1. Caesar Cipher
puts "Hello there, old chap. What would you like to be ciphered?"
string = gets.chomp
puts "By what shift?"
number = gets.chomp.to_i

def ceasarCipher(string, number)
    
    array = string.rstrip.lstrip.downcase.split('')
    array.each{|letter, index|  
        code = letter.ord + number
            if (code <= 122) && (code >= 97)
                letter.replace(code.chr)
            elsif (code > 122)
                letter.replace((((code - 97)%26) + 97).chr)
            end
    }
    return array.join()
end

puts "Here\'s your cipher: #{ceasarCipher(string, number)}"
# # 2. Stocks Picker - select the lowest stock to buy and the highest to sell
# # must buy before selling

# # def stocksPicker(array)
# #     buy = 0 
# #     maxProfit = 0
# #     day = 0
# #     range = []
    
# #     until day == array.length-1
# #         buy = array[day]
# #             (day...array.length).each do |d| 
# #             sell = array[d+1]
# #             profit = sell.to_i - buy.to_i
# #                 if profit > maxProfit 
# #                     maxProfit = profit
# #                     range = (day+1), (array.index(sell)+1)
# #                 end
# #             end
# #         day += 1
# #     end
# #     return range
# # end


# # puts stocksPicker([3, 4, 2,9, 5, 43, 125, 85, 200, 250, 1, 350, 64, 401, 6])

# # 3. Substrings
# # Implement a method #substrings that takes a word as the first argument 
# # and then an array of valid substrings (your dictionary) as the second argument. 
# # It should return a hash listing each substring (case insensitive) 
# # that was found in the original string and how many times it was found.

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy", "going","it","i","low","own","part","partner","sit"]

# def substrings(words, dictionary)
#     wordCounterHash = {}
#     wordArray = words.split(" ")
#     dictionary.each do |w|
#         wordArray.each do |check|
#             if check == w
#                 wordCounterHash.key?(check) == false 
#                 unless wordCounterHash.key?(check)
#                     wordCounterHash[check] = 1
#                 else wordCounterHash[check] += 1
#                 end
#             end
#         end
#     end
#     return wordCounterHash
# end

# puts substrings("how horn it partner", dictionary)

