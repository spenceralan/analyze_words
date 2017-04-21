require 'sinatra'
require 'sinatra/reloader'
require 'palindrome'
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/phrase_parser') do
  phrases = Palindrome.new
  
  erb(:output)
end