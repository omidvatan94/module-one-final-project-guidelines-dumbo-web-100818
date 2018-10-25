require_relative '../config/environment'
require '/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/lib/category_selection.rb'

def introduction
  puts "                  ================================"
  puts "                  |       Create Account         |"
  puts "                  ================================"
  puts "Please enter username"
  intro_input = gets.chomp
  if intro_input == "" || intro_input.include?(" ") || User.where(username:intro_input) != []
      puts `clear`
      introduction
  end
  user = User.new
  user.username = intro_input.to_s
  user.save
  #create new score object for user
  player_score_relation = Score.create(score: 0)
  player_score_relation.user = user
  player_score_relation.save

  category_selection(player_score_relation)
end

def verify
    puts "                  ================================"
    puts "                  |            Sign In           |"
    puts "                  ================================"
    puts "Please enter username"
    verify_user = gets.chomp
    find_user = User.all.find_by(username: verify_user)
    if find_user != nil && verify_user != ""
        player_score_relation = Score.create(score:0)
        player_score_relation.user = find_user
        # create new score object since starting new game
        player_score_relation.save
        puts`clear`
        category_selection(player_score_relation)
    else
        puts`clear`
        puts "We do not have your account on file we are sending you
        \ to the homescreen please try again"
        homescreen

    end
end

def homescreen
    prompt = TTY::Prompt.new
    resp = prompt.select("Please select from one of the following?", ["Create Account", "Sign In"])
    case resp
    when "Create Account"
        puts`clear`
        introduction
    when "Sign In"
        puts`clear`
        verify
    end
end


homescreen
