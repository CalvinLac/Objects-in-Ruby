require 'pry'

class Twit 

	include Enumerable 

	def initialize
		@tweets = []
	end
	attr_accessor :tweets 

	def each(&block)
		@tweets.each do |tweets|
			block.call(tweets)
	end 
			
		end

	def tweet(message) 
		tweet_limit = 144
		if message.size < tweet_limit
			puts "valid"
			@tweets.push message
		else
			puts "invalid"
			puts "your tweet was over the limit"
		end 
		print "currently all the tweets are #{@tweets}\n"		 
	end

	def display(tweetnumber) 
		@tweets[tweetnumber]
	end
end

calvin = Twit.new
while true
	calvin.tweet("hihi")
	calvin.tweet("bibi")
	calvin.tweet("sjflkjslsjflkjslfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfjfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfjsjflkjslfjsaldkfjslkfjsldfjslkfj")
	calvin.map{ |msg| print [msg.upcase]}
	break
end 

