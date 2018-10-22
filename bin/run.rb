require 'pry'
require_relative '../config/environment'



def introduction
  puts "Welcome to game"
  puts "Please enter username"
  intro_input = gets.chomp
  User.create(intro_input)
  binding.pry
end
