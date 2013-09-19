require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
require_relative 'lib/follower_clash'

# Index page
get '/' do
  erb :index
end

# Form submission page
post '/twitter' do
  @tag1 = params[:tag1]
  @tag2 = params[:tag2]
  
  erb :twitter
end