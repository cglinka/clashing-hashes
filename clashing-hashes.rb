require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  # name = "Clare"
  # "<h1>hello #{namebu}<h1>"
  erb :index
end
