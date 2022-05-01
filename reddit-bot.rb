require "pp"

require "reddit_bot"

require "yaml"

SUBREDDIT = "Shitposting"
BOT = RedditBot::Bot.new YAML.load(File.read "secrets.yaml"), subreddit: SUBREDDIT

comments_locked = false

while not comments_locked 
# print out the first 5 comments for the top ten posts  
#/r/mysubreddit/top/.json?count=20
ends