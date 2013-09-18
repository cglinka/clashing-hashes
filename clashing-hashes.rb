require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @name = "Bob"
  @other_name = "Jane"
  @show_description = true
  erb :index
end

post '/twitter' do
  "Hello World"
end
