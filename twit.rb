require 'pry'

class Twit 

	def initialize
		@tweets = []
	end
	attr_accessor :tweets 

	def tweet(message) 
		tweet_limit = 144
		if message.size < tweet_limit
			@tweets.push message
		else
			puts "invalid"
		end
		print @tweets 
		 
	end
end

calvin = Twit.new
while true
	calvin.tweet("hihi")
	calvin.tweet("bibi")
	print @tweets
	
	break
end 

