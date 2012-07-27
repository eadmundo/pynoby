require "rubygems"
require "bundler/setup"
require "sinatra"
require "liquid"

get '/' do
  liquid :index
end