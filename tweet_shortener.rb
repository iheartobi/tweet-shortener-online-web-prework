# Write your code here.
def dictionary 
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  
}
  
end 

def word_substituter(string)
  string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
   end.join(" ")
end 
 word_substituter(tweet_one)

def bulk_tweet_shortener(tweets)
  tweets.each do |word|
    puts word_substituter(word)
  end
end 
bulk_tweet_shortener(tweets)

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else 
    tweet
  end
end 
selective_tweet_shortener(tweet_three)

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
     word_substituter(tweet)[0..140] + "..."
  else 
    tweet 
  end
end 
shortened_tweet_truncator(tweet)



