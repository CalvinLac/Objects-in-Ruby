require 'pry'

class Twit 
  include Enumerable 
  attr_accessor :tweets

  def initialize
    @tweets = []
  end 

  def each(&block)
    @tweets.each do |tweets|
    block.call(tweets)
    end 
  end


  def tweet(message) 
    tweet_limit = 144
    if message.size < tweet_limit
      puts "Valid"
      @tweets.push message
    else
      puts "Invalid"
      puts "Your tweet was over the limit and will not be saved"
    end 
    print "currently all the tweets are #{@tweets}\n" 
  end

  def display(tweetnumber) 
    @tweets[tweetnumber]
    puts "Tweet number #{tweetnumber} is #{@tweets[tweetnumber]}"
  end
  
end

calvin = Twit.new
  while true
  calvin.tweet("hihi")
  calvin.tweet("bibi")
  calvin.tweet("lili")
  calvin.tweet("zizi")
  calvin.tweet("qiqi")
  calvin.tweet("sjflkjslsjflkjslfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfjfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfj")
  calvin.display(1)
  calvin.each{ |msg| print [msg.upcase]}
  puts " "
  calvin.map { |msg| print [msg.capitalize]}
  break
  end 

