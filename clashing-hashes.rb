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
  @user1  = FollowerClash::User.new(params[:user1])
  @user2  = FollowerClash::User.new(params[:user2])
  @result = FollowerClash::Comparer.new(@user1, @user2).compare
  
  erb :results
end