require_relative "/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/app/models/politician.rb"

a = Politician.new
a.name = "Cristi"
a.party = "Republican"
a.save

b = Politician.new
b.name = "Coumo"
b.party = "Democrat"
b.save
