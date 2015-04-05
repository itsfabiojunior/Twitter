require "rubygems"
require "tweetstream"
require "em-http-request"
require "simple_oauth"
require "json"
require "uri"
	 
# config oauth
OAUTH = {
	 :consumer_key => "oiaKglkmIN9d6chA5sQnWOuvj",
	 :consumer_secret => " FP0YS6PzlCybEyFaVhtT9WQTbMCcHhrZfsxyuGBsOUq1GOtlDV",
	 :token => " 920902302-QN1rnQB5oFWxAcQ2T5e19h2eRt2OL2TQ9v7xRJTk",
	 :token_secret => "OUqiXYIYokA6rGisQ7zoKbPPAaGkpgDh1PODbpmBimXiF"
	}
	ACCOUNT_ID = OAUTH[:token].split("-").first.to_i
	 
	TweetStream.configure do |config|
	 config.consumer_key       = OAUTH[:consumer_key]
	 config.consumer_secret    = OAUTH[:consumer_secret]
	 config.oauth_token        = OAUTH[:token]
	 config.oauth_token_secret = OAUTH[:token_secret]
	 config.auth_method = :oauth
	end
