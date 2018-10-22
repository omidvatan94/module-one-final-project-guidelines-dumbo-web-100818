require 'pry'
require '/Users/omidvatandoost/mod1-project/module-one-final-project-guidelines-dumbo-web-100818/config/environment.rb'
require '/Users/omidvatandoost/mod1-project/module-one-final-project-guidelines-dumbo-web-100818/app/models/user.rb'


def introduction
  puts "Welcome to game"
  puts "Please enter username"
  intro_input = gets.chomp
  User.create(intro_input)
  binding.pry
end
