require 'pry-byebug'

def substrings(word, array)

    result = Hash.new(0)

    array.each do |substring|
        result[substring] += 1 if word.downcase.include?(substring)
    end

    p result

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)