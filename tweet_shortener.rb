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
    dictionary.each {|x| 
      x.each {|x,y| binding.pry
        if x.include?(str)
          return y 
        end
      }
    }
    n += 1
  end

end

def bulk_tweet_shortener(arr)
end

def selective_tweet_shortener(arr)
end
