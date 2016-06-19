class Twit 

	def initialize
		@tweets = []
	end

	def tweets(message)
		tweet_limit = 144
		if message.size < tweet_limit
			tweets = message
		else
			puts "invalid"
		end
		print tweets
		return tweets
	end
end

calvin = Twit.new
while true
	calvin.tweets("hihi")
	break
end 

