require "rubygems"
require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development?
require "Haml"

get '/' do
  haml :index, :locals => { :title => 'Pynoby' }
end