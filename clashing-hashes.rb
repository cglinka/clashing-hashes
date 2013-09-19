require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

# Index page
get '/' do
  erb :index
end

# Form submission page
post '/twitter' do
  t = Twitter::Tweet.new("UPDATED STATUS", 'Bob')
  @tweets = [t2]
  @tag1 = params[:tag1]
  @tag2 = params[:tag2]
  
  erb :twitter
end

#
