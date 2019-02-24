require 'pry'

def dictionary
  {
    ["hello"] => "hi", ["to", "two", "too"] => "2", ["for", "four"] => "4", ["be"] => "b", ["you"] => "u", ["at"] => "@", ["and"] => "&"
  }
end

def word_substituter(str)
  arr = str.split(" ")
  n = 0 
  while n < arr.length do
    dictionary.each {|x,y|
      if x.include?(arr[n].downcase)
        if arr[n].capitalize == arr[n]
          arr[n] = y.capitalize
        elsif arr[n].upcase == arr
          arr[n] = y.upcase
        else 
          arr[n] = y 
        end
      end
    }
    n += 1
  end
  arr.join(" ")
end

def bulk_tweet_shortener(arr)
  n = 0 
  while n < arr.length do 
    arr[n] = word_substituter(arr[n])
    puts arr[n]
    n += 1 
  end
end

def selective_tweet_shortener(arr)
  binding.pry
end
