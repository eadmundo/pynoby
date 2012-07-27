require "rubygems"
require "bundler/setup"
require "sinatra"
require "liquid"

get '/' do
  layout_path = '/vagrant/shared/templates/index.html'
  Liquid::Template.file_system = Liquid::LocalFileSystem.new(layout_path)
  Liquid::Template.parse( File.read(layout_path) ).render('title'=>'Pynoby')
end