require 'twitter'

@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

p @client.user.name
p @client.user.description
p @client.user.tweets_count

def tweet
  @client.update(ARGV[0])
  puts "Tweetしたぞい"
end
